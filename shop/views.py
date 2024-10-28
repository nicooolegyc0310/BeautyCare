from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404, redirect
from .models import MakeupProduct, PurchaseOrder, UserBeautyNews
from django.http import HttpResponseBadRequest, JsonResponse, HttpResponse
import openai
from django.conf import settings

@login_required
def dashboard(request):
    return render(request, 'shop/dashboard.html')

@login_required
def profile(request):
    return render(request, 'shop/profile.html')

@login_required
def product_category(request):
    """
    View function to display products based on selected category and handle pagination.

    It filters products based on the category specified in the GET request.
    If no category is specified, it displays all products.
    The function also paginates the results and provides the list of categories 
    to the template for filtering options.
    """
    category = request.GET.get('category', None)

    if category:
        products = MakeupProduct.objects.filter(category=category)
    else:
        products = MakeupProduct.objects.all()

    paginator = Paginator(products, 20)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    categories = MakeupProduct.objects.values_list('category', flat=True).distinct()

    return render(request, 'shop/product_category.html', {
        'page_obj': page_obj,
        'categories': categories,
        'selected_category': category
    })

def product_detail(request, id):
    product = get_object_or_404(MakeupProduct, id=id)
    return render(request, 'shop/product_detail.html', {'product': product})

@login_required
def purchase_orders(request):
    return render(request, 'shop/purchase_orders.html')

def purchase_orders(request):
    """
    Displays the purchase orders along with the total amount.
    """
    purchase_order = request.session.get('purchase_order', {})

    total_price = 0
    for item in purchase_order.values():
        item['total_price'] = item['price'] * item['quantity']
        total_price += item['total_price']

    return render(request, 'shop/purchase_orders.html', {
        'purchase_order': purchase_order,
        'total_price': total_price
    })

def add_to_purchase_order(request, product_id):
    """
    Adds a product to the purchase order session data.
    If the product already exists, increment the quantity; otherwise, add a new entry.
    """
    product = get_object_or_404(MakeupProduct, id=product_id)

    purchase_order = request.session.get('purchase_order', {})

    # Add product information to purchase order
    if str(product.id) in purchase_order:
        purchase_order[str(product.id)]['quantity'] += 1
    else:
        purchase_order[str(product.id)] = {
            'name': product.name,
            'price': float(product.price),
            'specification': product.size,  
            'category': product.category,  
            'quantity': 1
        }

    request.session['purchase_order'] = purchase_order
    return redirect('product_category')

def update_order_quantity(request, key):
    """
    Updates the quantity of a specific product in the purchase order session.
    """
    if request.method == 'POST':
        new_quantity = request.POST.get('quantity')
        if new_quantity and new_quantity.isdigit():
            new_quantity = int(new_quantity)
            if new_quantity < 1:
                return HttpResponseBadRequest("Quantity must be at least 1.")

            purchase_order = request.session.get('purchase_order', {})
            if key in purchase_order:
                purchase_order[key]['quantity'] = new_quantity
                request.session['purchase_order'] = purchase_order

    return redirect('purchase_orders')

def remove_order_item(request, key):
    """
    Removes a specific product from the purchase order session.
    """
    purchase_order = request.session.get('purchase_order', {})
    if key in purchase_order:
        del purchase_order[key]
    request.session['purchase_order'] = purchase_order 

    return redirect('purchase_orders')

def clear_purchase_order(request):
    """
    Clears the entire purchase order from the session.
    """
    if 'purchase_order' in request.session:
        del request.session['purchase_order']
    return redirect('purchase_orders')

def submit_purchase_order(request):
    """
    Submits the purchase order by saving it to the database and clearing the session data.
    """
    purchase_order = request.session.get('purchase_order', {})
    user = request.user

    # Save each product in the purchase order to the database
    for key, item in purchase_order.items():
        product = get_object_or_404(MakeupProduct, name=item['name'])

        PurchaseOrder.objects.create(
            user=user,
            product_name=item['name'],
            product_specification=item['specification'],
            product_category=item['category'],
            product_price=item['price'],
            quantity=item['quantity'],
            total_price=item['price'] * item['quantity']
        )

    # Clear the purchase order session data
    request.session['purchase_order'] = {}

    return redirect('purchase_orders') 

def profile(request):
    """
    Displays the user profile with all their purchase order records.
    """
    user = request.user
    orders = PurchaseOrder.objects.filter(user=user) 
    return render(request, 'shop/profile.html', {'user': user, 'orders': orders})

openai.api_key = settings.OPENAI_API_KEY

def get_beauty_news(user):
    user_news = UserBeautyNews.objects.filter(user=user).first()

    if user_news:
        return parse_beauty_news(user_news.news_data)
    
    try:
        response = openai.ChatCompletion.create(
            model="gpt-3.5-turbo",
            messages=[{"role": "user", "content": "Provide recent beauty news for the past three months."}]
        )
        news_text = response['choices'][0]['message']['content']
        UserBeautyNews.objects.create(user=user, news_data=news_text)
        return parse_beauty_news(news_text)
    except openai.error.AuthenticationError:
        return "Failed to authenticate with OpenAI API."
    except Exception as e:
        print("Error during API call:", str(e))
        return []

def parse_beauty_news(news_text):
    news_items = news_text.split('\n\n')
    news_list = []

    for item in news_items:
        parts = item.split('. ', 1)
        if len(parts) == 2:
            date = parts[0]
            description = parts[1]
            news_list.append({'date': date.strip(), 'description': description.strip()})
        else:
            news_list.append({'date': "Recent Update", 'description': item.strip()})

    return news_list

@login_required
def dashboard(request):
    beauty_news = get_beauty_news(request.user)
    context = {'beauty_news': beauty_news}
    return render(request, 'shop/dashboard.html', context)