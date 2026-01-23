
import 'package:scube_task/src/domain/entites/common_entity/category_entity.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';

class HomeEntity {
  final List<CategoryEntity> categories;
  final List<ProductEntity> newArrivals;

  const HomeEntity({required this.categories, required this.newArrivals});
}
