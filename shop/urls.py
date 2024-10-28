from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('login/', auth_views.LoginView.as_view(template_name='shop/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(next_page='/shop/login/'), name='logout'),
    path('profile/', views.profile, name='profile'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('product-category/', views.product_category, name='product_category'),
    path('product/<int:id>/', views.product_detail, name='product_detail'),
    path('add-to-purchase/<int:product_id>/', views.add_to_purchase_order, name='add_to_purchase_order'),
    path('purchase-orders/', views.purchase_orders, name='purchase_orders'),
    path('update-order-quantity/<str:key>/', views.update_order_quantity, name='update_order_quantity'),
    path('remove-order-item/<str:key>/', views.remove_order_item, name='remove_order_item'),
    path('clear-purchase-order/', views.clear_purchase_order, name='clear_purchase_order'),
    path('submit-purchase-order/', views.submit_purchase_order, name='submit_purchase_order'),
]