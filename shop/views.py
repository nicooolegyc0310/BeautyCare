from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404
from .models import MakeupProduct, PurchaseOrder

# Dashboard View
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

    # Get a list of unique categories for the filter dropdown
    categories = MakeupProduct.objects.values_list('category', flat=True).distinct()

    return render(request, 'shop/product_category.html', {
        'page_obj': page_obj,
        'categories': categories,
        'selected_category': category
    })

def product_detail(request, id):
    product = get_object_or_404(MakeupProduct, id=id)
    return render(request, 'shop/product_detail.html', {'product': product})
