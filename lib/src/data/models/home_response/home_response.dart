import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/data/models/product_model/product_model.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';

import '../category_model/category_model.dart';
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

/// --------------------
/// HomeResponse → HomeEntity
/// --------------------
extension HomeResponseMapper on HomeResponse {
  HomeEntity toEntity() {
    return HomeEntity(
      categories: homepage_categories
          .map((category) => category.toEntity())
          .toList(),
      newArrivals: newArrivalProducts
          .map((product) => product.toEntity())
          .toList(),
    );
  }
}
