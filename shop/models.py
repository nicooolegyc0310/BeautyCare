from django.db import models
from django.contrib.auth.models import User

class MakeupProduct(models.Model):
    """
    MakeupProduct model represents makeup products with details like name, brand, 
    category, price, description, color, size, image, rating, and reviews count. 
    It also tracks the creation and update timestamps.
    """
    name = models.CharField(max_length=255, verbose_name='Product Name')
    brand = models.CharField(max_length=100, verbose_name='Brand')
    category = models.CharField(max_length=100, verbose_name='Category')
    price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Price')
    description = models.TextField(verbose_name='Description', blank=True, null=True)
    color = models.CharField(max_length=50, verbose_name='Color', blank=True, null=True)
    size = models.CharField(max_length=50, verbose_name='Size', blank=True, null=True)
    image = models.ImageField(upload_to='products/', verbose_name='Product Image', blank=True, null=True)
    rating = models.DecimalField(max_digits=3, decimal_places=1, verbose_name='Rating', default=0)
    reviews_count = models.IntegerField(verbose_name='Reviews Count', default=0)
    created_at = models.DateTimeField(auto_now_add=True, verbose_name='Created At')
    updated_at = models.DateTimeField(auto_now=True, verbose_name='Updated At')

    def __str__(self):
        return f"{self.name} - {self.brand}"

    class Meta:
        verbose_name = 'Makeup Product'
        verbose_name_plural = 'Makeup Products'


class PurchaseOrder(models.Model):
    """
    PurchaseOrder model represents an order made by a user for makeup products.
    It includes details like the user, product name, specification, category, price, 
    quantity, total price, and creation timestamp.
    """
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product_name = models.CharField(max_length=255)
    product_specification = models.CharField(max_length=255, blank=True, null=True)
    product_category = models.CharField(max_length=100, blank=True, null=True)
    product_price = models.DecimalField(max_digits=10, decimal_places=2)
    quantity = models.IntegerField()
    total_price = models.DecimalField(max_digits=10, decimal_places=2)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.product_name} - {self.quantity} units by {self.user.username}"

class UserBeautyNews(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    news_data = models.TextField()
    fetched_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"News for {self.user.username}"