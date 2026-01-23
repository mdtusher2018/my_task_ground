import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scube_task/src/domain/entites/common_entity/category_entity.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

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

/// --------------------
/// Category → CategoryEntity
/// --------------------
extension CategoryMapper on Category {
  CategoryEntity toEntity() {
    return CategoryEntity(title: name, icon: image ?? icon, id: id);
  }
}
