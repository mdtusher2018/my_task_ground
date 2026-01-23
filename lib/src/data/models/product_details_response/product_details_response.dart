// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/domain/entites/product_details_entity.dart';
part 'product_details_response.freezed.dart';
part 'product_details_response.g.dart';

@freezed
abstract class ProductDetailsResponse with _$ProductDetailsResponse {
  const factory ProductDetailsResponse({
    Product? product,
    List<dynamic>? gellery,
    String? tags,
    int? totalProductReviewQty,
    int? totalReview,
    List<dynamic>? productReviews,
    List<dynamic>? specifications,
    RecaptchaSetting? recaptchaSetting,
    List<RelatedProduct>? relatedProducts,
    DefaultProfile? defaultProfile,
    bool? is_seller_product,
    Seller? seller,
    int? sellerTotalProducts,
    List<dynamic>? this_seller_products,
    int? sellerReviewQty,
    int? sellerTotalReview,
  }) = _ProductDetailsResponse;

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);
}

// ---------------- PRODUCT ----------------

@freezed
abstract class Product with _$Product {
  const factory Product({
    int? id,
    String? name,
    String? short_name,
    String? slug,
    String? thumb_image,
    int? vendor_id,
    int? category_id,
    int? sub_category_id,
    int? child_category_id,
    int? brand_id,
    int? qty,
    String? weight,
    int? sold_qty,
    String? short_description,
    String? long_description,
    String? video_link,
    String? sku,
    String? seo_title,
    String? seo_description,
    num? price,
    num? offer_price,
    dynamic tags,
    int? show_homepage,
    int? is_undefine,
    int? is_featured,
    int? new_product,
    int? is_top,
    int? is_best,
    int? status,
    int? is_specification,
    int? approve_by_admin,
    String? is_bundle_product,
    String? bundle_products,
    String? bundle_product_offer_type,
    String? bundle_product_offer,
    String? created_at,
    String? updated_at,
    String? averageRating,
    String? totalSold,
    Category? category,
    Brand? brand,
    List<ActiveVariant>? active_variants,
    List<dynamic>? avg_review,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

// ---------------- CATEGORY ----------------

@freezed
abstract class Category with _$Category {
  const factory Category({
    int? id,
    String? name,
    String? slug,
    String? icon,
    int? status,
    String? image,
    String? created_at,
    String? updated_at,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

// ---------------- BRAND ----------------

@freezed
abstract class Brand with _$Brand {
  const factory Brand({int? id, String? name}) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

// ---------------- ACTIVE VARIANT ----------------

@freezed
abstract class ActiveVariant with _$ActiveVariant {
  const factory ActiveVariant({
    int? id,
    String? name,
    int? product_id,
    List<ActiveVariantItem>? active_variant_items,
  }) = _ActiveVariant;

  factory ActiveVariant.fromJson(Map<String, dynamic> json) =>
      _$ActiveVariantFromJson(json);
}

@freezed
abstract class ActiveVariantItem with _$ActiveVariantItem {
  const factory ActiveVariantItem({
    int? product_variant_id,
    String? name,
    num? price,
    int? id,
  }) = _ActiveVariantItem;

  factory ActiveVariantItem.fromJson(Map<String, dynamic> json) =>
      _$ActiveVariantItemFromJson(json);
}

// ---------------- RELATED PRODUCT ----------------

@freezed
abstract class RelatedProduct with _$RelatedProduct {
  const factory RelatedProduct({
    int? id,
    String? name,
    String? short_name,
    String? slug,
    String? thumb_image,
    int? vendor_id,
    int? category_id,
    int? sub_category_id,
    int? child_category_id,
    int? brand_id,
    int? qty,
    String? weight,
    int? sold_qty,
    String? short_description,
    String? long_description,
    String? video_link,
    String? sku,
    String? seo_title,
    String? seo_description,
    num? price,
    num? offer_price,
    dynamic tags,
    int? show_homepage,
    int? is_undefine,
    int? is_featured,
    int? new_product,
    int? is_top,
    int? is_best,
    int? status,
    int? is_specification,
    int? approve_by_admin,
    String? is_bundle_product,
    String? bundle_products,
    String? bundle_product_offer_type,
    String? bundle_product_offer,
    String? created_at,
    String? updated_at,
   
    dynamic averageRating,
    dynamic totalSold,
    List<ActiveVariant>? active_variants,
  }) = _RelatedProduct;

  factory RelatedProduct.fromJson(Map<String, dynamic> json) =>
      _$RelatedProductFromJson(json);
}

// ---------------- DEFAULT PROFILE ----------------

@freezed
abstract class DefaultProfile with _$DefaultProfile {
  const factory DefaultProfile({String? image}) = _DefaultProfile;

  factory DefaultProfile.fromJson(Map<String, dynamic> json) =>
      _$DefaultProfileFromJson(json);
}

// ---------------- RECAPTCHA ----------------

@freezed
abstract class RecaptchaSetting with _$RecaptchaSetting {
  const factory RecaptchaSetting({
    int? id,
    String? site_key,
    String? secret_key,
    int? status,
    String? created_at,
    String? updated_at,
  }) = _RecaptchaSetting;

  factory RecaptchaSetting.fromJson(Map<String, dynamic> json) =>
      _$RecaptchaSettingFromJson(json);
}

// ---------------- SELLER ----------------

@freezed
abstract class Seller with _$Seller {
  const factory Seller({
    int? id,
    int? user_id,
    num? total_amount,
    String? banner_image,
    String? logo,
    String? phone,
    String? email,
    String? shop_name,
    String? slug,
    String? open_at,
    String? closed_at,
    String? address,
    String? seo_title,
    String? seo_description,
    int? status,
    int? is_featured,
    int? top_rated,
    String? verified_token,
    int? is_verified,
    String? greeting_msg,
    String? created_at,
    String? updated_at,
    String? averageRating,
    SellerUser? user,
  }) = _Seller;

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);
}

@freezed
abstract class SellerUser with _$SellerUser {
  const factory SellerUser({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? image,
    String? address,
    int? country_id,
    int? state_id,
    int? city_id,
    String? zip_code,
  }) = _SellerUser;

  factory SellerUser.fromJson(Map<String, dynamic> json) =>
      _$SellerUserFromJson(json);
}

extension ProductDetailsMapper on ProductDetailsResponse {
  ProductDetailsEntity toEntity() {
    final product = this.product;

    return ProductDetailsEntity(
      id: product?.id ?? 0,
      name: product?.name ?? '',
      categoryName: product?.category?.name ?? '',
      image: product?.thumb_image ?? '',
      gallery: gellery?.whereType<String>().toList() ?? [],
      price: (product?.offer_price ?? product?.price ?? 0).toDouble(),
      offerPrice: product?.price?.toDouble(),
      rating: double.tryParse(product?.averageRating ?? '0') ?? 0,
      totalReviews: totalProductReviewQty ?? 0,
      shortDescription: product?.short_description ?? '',
      longDescription: product?.long_description ?? '',
      features: _extractFeatures(product?.long_description),
    );
  }
}

/// Simple demo extractor (customize based on API later)
List<String> _extractFeatures(String? text) {
  if (text == null || text.isEmpty) return [];

  return text
      .replaceAll(RegExp(r'<[^>]*>'), '') // remove html
      .split('.')
      .where((e) => e.trim().isNotEmpty)
      .take(5)
      .toList();
}
