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
  gellery: json['gellery'] as List<dynamic>?,
  tags: json['tags'] as String?,
  totalProductReviewQty: (json['totalProductReviewQty'] as num?)?.toInt(),
  totalReview: (json['totalReview'] as num?)?.toInt(),
  productReviews: json['productReviews'] as List<dynamic>?,
  specifications: json['specifications'] as List<dynamic>?,
  recaptchaSetting: json['recaptchaSetting'] == null
      ? null
      : RecaptchaSetting.fromJson(
          json['recaptchaSetting'] as Map<String, dynamic>,
        ),
  relatedProducts: (json['relatedProducts'] as List<dynamic>?)
      ?.map((e) => RelatedProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
  defaultProfile: json['defaultProfile'] == null
      ? null
      : DefaultProfile.fromJson(json['defaultProfile'] as Map<String, dynamic>),
  is_seller_product: json['is_seller_product'] as bool?,
  seller: json['seller'] == null
      ? null
      : Seller.fromJson(json['seller'] as Map<String, dynamic>),
  sellerTotalProducts: (json['sellerTotalProducts'] as num?)?.toInt(),
  this_seller_products: json['this_seller_products'] as List<dynamic>?,
  sellerReviewQty: (json['sellerReviewQty'] as num?)?.toInt(),
  sellerTotalReview: (json['sellerTotalReview'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductDetailsResponseToJson(
  _ProductDetailsResponse instance,
) => <String, dynamic>{
  'product': instance.product,
  'gellery': instance.gellery,
  'tags': instance.tags,
  'totalProductReviewQty': instance.totalProductReviewQty,
  'totalReview': instance.totalReview,
  'productReviews': instance.productReviews,
  'specifications': instance.specifications,
  'recaptchaSetting': instance.recaptchaSetting,
  'relatedProducts': instance.relatedProducts,
  'defaultProfile': instance.defaultProfile,
  'is_seller_product': instance.is_seller_product,
  'seller': instance.seller,
  'sellerTotalProducts': instance.sellerTotalProducts,
  'this_seller_products': instance.this_seller_products,
  'sellerReviewQty': instance.sellerReviewQty,
  'sellerTotalReview': instance.sellerTotalReview,
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  short_name: json['short_name'] as String?,
  slug: json['slug'] as String?,
  thumb_image: json['thumb_image'] as String?,
  vendor_id: (json['vendor_id'] as num?)?.toInt(),
  category_id: (json['category_id'] as num?)?.toInt(),
  sub_category_id: (json['sub_category_id'] as num?)?.toInt(),
  child_category_id: (json['child_category_id'] as num?)?.toInt(),
  brand_id: (json['brand_id'] as num?)?.toInt(),
  qty: (json['qty'] as num?)?.toInt(),
  weight: json['weight'] as String?,
  sold_qty: (json['sold_qty'] as num?)?.toInt(),
  short_description: json['short_description'] as String?,
  long_description: json['long_description'] as String?,
  video_link: json['video_link'] as String?,
  sku: json['sku'] as String?,
  seo_title: json['seo_title'] as String?,
  seo_description: json['seo_description'] as String?,
  price: json['price'] as num?,
  offer_price: json['offer_price'] as num?,
  tags: json['tags'],
  show_homepage: (json['show_homepage'] as num?)?.toInt(),
  is_undefine: (json['is_undefine'] as num?)?.toInt(),
  is_featured: (json['is_featured'] as num?)?.toInt(),
  new_product: (json['new_product'] as num?)?.toInt(),
  is_top: (json['is_top'] as num?)?.toInt(),
  is_best: (json['is_best'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  is_specification: (json['is_specification'] as num?)?.toInt(),
  approve_by_admin: (json['approve_by_admin'] as num?)?.toInt(),
  is_bundle_product: json['is_bundle_product'] as String?,
  bundle_products: json['bundle_products'] as String?,
  bundle_product_offer_type: json['bundle_product_offer_type'] as String?,
  bundle_product_offer: json['bundle_product_offer'] as String?,
  created_at: json['created_at'] as String?,
  updated_at: json['updated_at'] as String?,
  averageRating: json['averageRating'] as String?,
  totalSold: json['totalSold'] as String?,
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  brand: json['brand'] == null
      ? null
      : Brand.fromJson(json['brand'] as Map<String, dynamic>),
  active_variants: (json['active_variants'] as List<dynamic>?)
      ?.map((e) => ActiveVariant.fromJson(e as Map<String, dynamic>))
      .toList(),
  avg_review: json['avg_review'] as List<dynamic>?,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'short_name': instance.short_name,
  'slug': instance.slug,
  'thumb_image': instance.thumb_image,
  'vendor_id': instance.vendor_id,
  'category_id': instance.category_id,
  'sub_category_id': instance.sub_category_id,
  'child_category_id': instance.child_category_id,
  'brand_id': instance.brand_id,
  'qty': instance.qty,
  'weight': instance.weight,
  'sold_qty': instance.sold_qty,
  'short_description': instance.short_description,
  'long_description': instance.long_description,
  'video_link': instance.video_link,
  'sku': instance.sku,
  'seo_title': instance.seo_title,
  'seo_description': instance.seo_description,
  'price': instance.price,
  'offer_price': instance.offer_price,
  'tags': instance.tags,
  'show_homepage': instance.show_homepage,
  'is_undefine': instance.is_undefine,
  'is_featured': instance.is_featured,
  'new_product': instance.new_product,
  'is_top': instance.is_top,
  'is_best': instance.is_best,
  'status': instance.status,
  'is_specification': instance.is_specification,
  'approve_by_admin': instance.approve_by_admin,
  'is_bundle_product': instance.is_bundle_product,
  'bundle_products': instance.bundle_products,
  'bundle_product_offer_type': instance.bundle_product_offer_type,
  'bundle_product_offer': instance.bundle_product_offer,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
  'averageRating': instance.averageRating,
  'totalSold': instance.totalSold,
  'category': instance.category,
  'brand': instance.brand,
  'active_variants': instance.active_variants,
  'avg_review': instance.avg_review,
};

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  icon: json['icon'] as String?,
  status: (json['status'] as num?)?.toInt(),
  image: json['image'] as String?,
  created_at: json['created_at'] as String?,
  updated_at: json['updated_at'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'icon': instance.icon,
  'status': instance.status,
  'image': instance.image,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
};

_Brand _$BrandFromJson(Map<String, dynamic> json) =>
    _Brand(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$BrandToJson(_Brand instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_ActiveVariant _$ActiveVariantFromJson(Map<String, dynamic> json) =>
    _ActiveVariant(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      product_id: (json['product_id'] as num?)?.toInt(),
      active_variant_items: (json['active_variant_items'] as List<dynamic>?)
          ?.map((e) => ActiveVariantItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActiveVariantToJson(_ActiveVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.product_id,
      'active_variant_items': instance.active_variant_items,
    };

_ActiveVariantItem _$ActiveVariantItemFromJson(Map<String, dynamic> json) =>
    _ActiveVariantItem(
      product_variant_id: (json['product_variant_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as num?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ActiveVariantItemToJson(_ActiveVariantItem instance) =>
    <String, dynamic>{
      'product_variant_id': instance.product_variant_id,
      'name': instance.name,
      'price': instance.price,
      'id': instance.id,
    };

_RelatedProduct _$RelatedProductFromJson(Map<String, dynamic> json) =>
    _RelatedProduct(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      short_name: json['short_name'] as String?,
      slug: json['slug'] as String?,
      thumb_image: json['thumb_image'] as String?,
      vendor_id: (json['vendor_id'] as num?)?.toInt(),
      category_id: (json['category_id'] as num?)?.toInt(),
      sub_category_id: (json['sub_category_id'] as num?)?.toInt(),
      child_category_id: (json['child_category_id'] as num?)?.toInt(),
      brand_id: (json['brand_id'] as num?)?.toInt(),
      qty: (json['qty'] as num?)?.toInt(),
      weight: json['weight'] as String?,
      sold_qty: (json['sold_qty'] as num?)?.toInt(),
      short_description: json['short_description'] as String?,
      long_description: json['long_description'] as String?,
      video_link: json['video_link'] as String?,
      sku: json['sku'] as String?,
      seo_title: json['seo_title'] as String?,
      seo_description: json['seo_description'] as String?,
      price: json['price'] as num?,
      offer_price: json['offer_price'] as num?,
      tags: json['tags'],
      show_homepage: (json['show_homepage'] as num?)?.toInt(),
      is_undefine: (json['is_undefine'] as num?)?.toInt(),
      is_featured: (json['is_featured'] as num?)?.toInt(),
      new_product: (json['new_product'] as num?)?.toInt(),
      is_top: (json['is_top'] as num?)?.toInt(),
      is_best: (json['is_best'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      is_specification: (json['is_specification'] as num?)?.toInt(),
      approve_by_admin: (json['approve_by_admin'] as num?)?.toInt(),
      is_bundle_product: json['is_bundle_product'] as String?,
      bundle_products: json['bundle_products'] as String?,
      bundle_product_offer_type: json['bundle_product_offer_type'] as String?,
      bundle_product_offer: json['bundle_product_offer'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      averageRating: json['averageRating'],
      totalSold: json['totalSold'],
      active_variants: (json['active_variants'] as List<dynamic>?)
          ?.map((e) => ActiveVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RelatedProductToJson(_RelatedProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_name': instance.short_name,
      'slug': instance.slug,
      'thumb_image': instance.thumb_image,
      'vendor_id': instance.vendor_id,
      'category_id': instance.category_id,
      'sub_category_id': instance.sub_category_id,
      'child_category_id': instance.child_category_id,
      'brand_id': instance.brand_id,
      'qty': instance.qty,
      'weight': instance.weight,
      'sold_qty': instance.sold_qty,
      'short_description': instance.short_description,
      'long_description': instance.long_description,
      'video_link': instance.video_link,
      'sku': instance.sku,
      'seo_title': instance.seo_title,
      'seo_description': instance.seo_description,
      'price': instance.price,
      'offer_price': instance.offer_price,
      'tags': instance.tags,
      'show_homepage': instance.show_homepage,
      'is_undefine': instance.is_undefine,
      'is_featured': instance.is_featured,
      'new_product': instance.new_product,
      'is_top': instance.is_top,
      'is_best': instance.is_best,
      'status': instance.status,
      'is_specification': instance.is_specification,
      'approve_by_admin': instance.approve_by_admin,
      'is_bundle_product': instance.is_bundle_product,
      'bundle_products': instance.bundle_products,
      'bundle_product_offer_type': instance.bundle_product_offer_type,
      'bundle_product_offer': instance.bundle_product_offer,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'averageRating': instance.averageRating,
      'totalSold': instance.totalSold,
      'active_variants': instance.active_variants,
    };

_DefaultProfile _$DefaultProfileFromJson(Map<String, dynamic> json) =>
    _DefaultProfile(image: json['image'] as String?);

Map<String, dynamic> _$DefaultProfileToJson(_DefaultProfile instance) =>
    <String, dynamic>{'image': instance.image};

_RecaptchaSetting _$RecaptchaSettingFromJson(Map<String, dynamic> json) =>
    _RecaptchaSetting(
      id: (json['id'] as num?)?.toInt(),
      site_key: json['site_key'] as String?,
      secret_key: json['secret_key'] as String?,
      status: (json['status'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$RecaptchaSettingToJson(_RecaptchaSetting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'site_key': instance.site_key,
      'secret_key': instance.secret_key,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_Seller _$SellerFromJson(Map<String, dynamic> json) => _Seller(
  id: (json['id'] as num?)?.toInt(),
  user_id: (json['user_id'] as num?)?.toInt(),
  total_amount: json['total_amount'] as num?,
  banner_image: json['banner_image'] as String?,
  logo: json['logo'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  shop_name: json['shop_name'] as String?,
  slug: json['slug'] as String?,
  open_at: json['open_at'] as String?,
  closed_at: json['closed_at'] as String?,
  address: json['address'] as String?,
  seo_title: json['seo_title'] as String?,
  seo_description: json['seo_description'] as String?,
  status: (json['status'] as num?)?.toInt(),
  is_featured: (json['is_featured'] as num?)?.toInt(),
  top_rated: (json['top_rated'] as num?)?.toInt(),
  verified_token: json['verified_token'] as String?,
  is_verified: (json['is_verified'] as num?)?.toInt(),
  greeting_msg: json['greeting_msg'] as String?,
  created_at: json['created_at'] as String?,
  updated_at: json['updated_at'] as String?,
  averageRating: json['averageRating'] as String?,
  user: json['user'] == null
      ? null
      : SellerUser.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SellerToJson(_Seller instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.user_id,
  'total_amount': instance.total_amount,
  'banner_image': instance.banner_image,
  'logo': instance.logo,
  'phone': instance.phone,
  'email': instance.email,
  'shop_name': instance.shop_name,
  'slug': instance.slug,
  'open_at': instance.open_at,
  'closed_at': instance.closed_at,
  'address': instance.address,
  'seo_title': instance.seo_title,
  'seo_description': instance.seo_description,
  'status': instance.status,
  'is_featured': instance.is_featured,
  'top_rated': instance.top_rated,
  'verified_token': instance.verified_token,
  'is_verified': instance.is_verified,
  'greeting_msg': instance.greeting_msg,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
  'averageRating': instance.averageRating,
  'user': instance.user,
};

_SellerUser _$SellerUserFromJson(Map<String, dynamic> json) => _SellerUser(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  image: json['image'] as String?,
  address: json['address'] as String?,
  country_id: (json['country_id'] as num?)?.toInt(),
  state_id: (json['state_id'] as num?)?.toInt(),
  city_id: (json['city_id'] as num?)?.toInt(),
  zip_code: json['zip_code'] as String?,
);

Map<String, dynamic> _$SellerUserToJson(_SellerUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'address': instance.address,
      'country_id': instance.country_id,
      'state_id': instance.state_id,
      'city_id': instance.city_id,
      'zip_code': instance.zip_code,
    };
