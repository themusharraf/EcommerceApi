from django.contrib.admin import ModelAdmin
from django.contrib import admin

from apps.models import Category, Brand, Product, ProductImage


@admin.register(Category)
class CategoryModelAdmin(ModelAdmin):
    pass


@admin.register(Brand)
class BrandModelAdmin(ModelAdmin):
    pass


@admin.register(Product)
class ProductModelAdmin(ModelAdmin):
    pass


@admin.register(ProductImage)
class ProductImageModelAdmin(ModelAdmin):
    pass
