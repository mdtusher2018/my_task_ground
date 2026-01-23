// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  short_name: json['short_name'] as String,
  slug: json['slug'] as String,
  thumb_image: json['thumb_image'] as String,
  qty: (json['qty'] as num).toInt(),
  sold_qty: (json['sold_qty'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  offer_price: (json['offer_price'] as num?)?.toDouble(),
  category_id: (json['category_id'] as num).toInt(),
  sub_category_id: (json['sub_category_id'] as num).toInt(),
  child_category_id: (json['child_category_id'] as num).toInt(),
  brand_id: (json['brand_id'] as num).toInt(),
  averageRating: json['averageRating'] as String,
  totalSold: json['totalSold'],
  active_variants: (json['active_variants'] as List<dynamic>)
      .map((e) => Variant.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'short_name': instance.short_name,
  'slug': instance.slug,
  'thumb_image': instance.thumb_image,
  'qty': instance.qty,
  'sold_qty': instance.sold_qty,
  'price': instance.price,
  'offer_price': instance.offer_price,
  'category_id': instance.category_id,
  'sub_category_id': instance.sub_category_id,
  'child_category_id': instance.child_category_id,
  'brand_id': instance.brand_id,
  'averageRating': instance.averageRating,
  'totalSold': instance.totalSold,
  'active_variants': instance.active_variants,
};

_Variant _$VariantFromJson(Map<String, dynamic> json) => _Variant(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  product_id: (json['product_id'] as num).toInt(),
  active_variant_items: (json['active_variant_items'] as List<dynamic>)
      .map((e) => VariantItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VariantToJson(_Variant instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'product_id': instance.product_id,
  'active_variant_items': instance.active_variant_items,
};

_VariantItem _$VariantItemFromJson(Map<String, dynamic> json) => _VariantItem(
  id: (json['id'] as num).toInt(),
  product_variant_id: (json['product_variant_id'] as num).toInt(),
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$VariantItemToJson(_VariantItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_variant_id': instance.product_variant_id,
      'name': instance.name,
      'price': instance.price,
    };
