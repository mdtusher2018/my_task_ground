import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
abstract class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    required List<Category> homepage_categories,

    required List<Product> newArrivalProducts,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String slug,
    required String icon,
    String? image,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}


@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String name,

    required String short_name,

    required String slug,

    required String thumb_image,

    required int qty,

    required int sold_qty,

    required double price,

    double? offer_price,

    required int category_id,

    required int sub_category_id,

    required int child_category_id,

    required int brand_id,


    required String averageRating,

    dynamic totalSold,

    required List<Variant> active_variants,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}


@freezed
abstract class Variant with _$Variant {
  const factory Variant({
    required int id,
    required String name,

    required int product_id,

    required List<VariantItem> active_variant_items,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}


@freezed
abstract class VariantItem with _$VariantItem {
  const factory VariantItem({
    required int id,

    required int product_variant_id,

    required String name,
    required int price,
  }) = _VariantItem;

  factory VariantItem.fromJson(Map<String, dynamic> json) =>
      _$VariantItemFromJson(json);
}


