// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/domain/entites/product_details_entity.dart';
part 'product_details_response.freezed.dart';
part 'product_details_response.g.dart';

@freezed
abstract class ProductDetailsResponse with _$ProductDetailsResponse {
  const factory ProductDetailsResponse({
    Product? product,
     List<GalleryItem>? gellery,
    int? totalReview,
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
    String? slug,
    String? thumb_image,
    String? short_description,
    String? long_description,

    num? price,
    num? offer_price,



    dynamic averageRating,

    Category? category,

    List<dynamic>? avg_review,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

// ---------------- CATEGORY ----------------

@freezed
abstract class Category with _$Category {
  const factory Category({
   
    String? name,
  

  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}





@freezed
abstract class GalleryItem with _$GalleryItem {
  const factory GalleryItem({
    String? image,

  }) = _GalleryItem;

  factory GalleryItem.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemFromJson(json);
}






extension ProductDetailsMapper on ProductDetailsResponse {
  ProductDetailsEntity toEntity() {
    final product = this.product;

    return ProductDetailsEntity(
      id: product?.id ?? 0,
      name: product?.name ?? '',
      categoryName: product?.category?.name ?? '',
      image: product?.thumb_image ?? '',
       gallery: gellery
       ,
      price: (product?.offer_price ?? product?.price ?? 0).toDouble(),
      offerPrice: product?.price?.toDouble(),
      rating: double.tryParse(product?.averageRating ?? '0') ?? 0,
      totalReviews: totalReview ?? 0,
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
