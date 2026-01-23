// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailsResponse _$ProductDetailsResponseFromJson(
  Map<String, dynamic> json,
) => _ProductDetailsResponse(
  product: json['product'] == null
      ? null
      : Product.fromJson(json['product'] as Map<String, dynamic>),
  gellery: (json['gellery'] as List<dynamic>?)
      ?.map((e) => GalleryItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalReview: (json['totalReview'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductDetailsResponseToJson(
  _ProductDetailsResponse instance,
) => <String, dynamic>{
  'product': instance.product,
  'gellery': instance.gellery,
  'totalReview': instance.totalReview,
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  thumb_image: json['thumb_image'] as String?,
  short_description: json['short_description'] as String?,
  long_description: json['long_description'] as String?,
  price: json['price'] as num?,
  offer_price: json['offer_price'] as num?,
  averageRating: json['averageRating'],
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  avg_review: json['avg_review'] as List<dynamic>?,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'thumb_image': instance.thumb_image,
  'short_description': instance.short_description,
  'long_description': instance.long_description,
  'price': instance.price,
  'offer_price': instance.offer_price,
  'averageRating': instance.averageRating,
  'category': instance.category,
  'avg_review': instance.avg_review,
};

_Category _$CategoryFromJson(Map<String, dynamic> json) =>
    _Category(name: json['name'] as String?);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'name': instance.name,
};

_GalleryItem _$GalleryItemFromJson(Map<String, dynamic> json) =>
    _GalleryItem(image: json['image'] as String?);

Map<String, dynamic> _$GalleryItemToJson(_GalleryItem instance) =>
    <String, dynamic>{'image': instance.image};
