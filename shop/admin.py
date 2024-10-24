from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin
from .models import MakeupProduct, PurchaseOrder


class MakeupProductResource(resources.ModelResource):
    """
    MakeupProductResource defines the import/export functionality for the 
    MakeupProduct model, specifying fields to include during data transfer.
    """
    class Meta:
        model = MakeupProduct
        fields = ('id', 'name', 'brand', 'category', 'price', 'description', 
                  'color', 'size', 'rating', 'reviews_count', 'created_at', 
                  'updated_at')


class MakeupProductAdmin(ImportExportModelAdmin):
    """
    MakeupProductAdmin manages the admin interface for MakeupProduct, 
    allowing for import/export functionality, list display, search fields, 
    and filters.
    """
    resource_class = MakeupProductResource
    list_display = ('name', 'brand', 'category', 'color', 'size', 'price', 'rating')
    search_fields = ('name', 'brand', 'category', 'color')
    list_filter = ('brand', 'category', 'rating')


admin.site.register(MakeupProduct, MakeupProductAdmin)


@admin.register(PurchaseOrder)
class PurchaseOrderAdmin(admin.ModelAdmin):
    """
    PurchaseOrderAdmin manages the admin interface for PurchaseOrder, 
    defining list display, search fields, and filters for the model.
    """
    list_display = ('product_name', 'user', 'quantity', 'total_price', 'created_at')
    search_fields = ('product_name', 'user__username')
    list_filter = ('created_at')
