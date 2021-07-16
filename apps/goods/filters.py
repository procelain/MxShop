# goods/filters.py

import django_filters

from .models import Goods
from django.db.models import Q


class GoodsFilter(django_filters.rest_framework.FilterSet):
    """
    商品过滤的类
    """
    # 两个参数，name是要过滤的字段，lookup是执行的行为，‘小与等于本店价格’, 设置价格区间
    pricemin = django_filters.NumberFilter(name="shop_price", lookup_expr='gte', help_text='最小价格')
    pricemax = django_filters.NumberFilter(name="shop_price", lookup_expr='lte')
    top_category = django_filters.NumberFilter(name="category", method='top_category_filter')
    top_click_num = django_filters.BooleanFilter(name='click_num', method='top_click_num_filter')
    # 查找第一类别下的所有商品
    def top_category_filter(self, queryset, name, value):
        # 不管当前点击的是一级分类二级分类还是三级分类，都能找到。
        return queryset.filter(Q(category_id=value) | Q(category__parent_category_id=value) | Q(
            category__parent_category__parent_category_id=value))

    def top_click_num_filter(self, queryset, name, value):
        if value:
            return queryset.order_by('-click_num')[:7]
    class Meta:
        model = Goods
        fields = ['pricemin', 'pricemax', 'is_hot', 'is_new']
