import 'package:equatable/equatable.dart';
import 'package:scube_task/src/domain/entites/product_by_category_entity.dart';

abstract class ProductByCategoryState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductByCategoryInitial extends ProductByCategoryState {}

class ProductByCategoryLoading extends ProductByCategoryState {}

class ProductByCategoryLoaded extends ProductByCategoryState {
  final ProductByCategoryEntity ProductByCategory;

  ProductByCategoryLoaded(this.ProductByCategory);

  @override
  List<Object?> get props => [ProductByCategory];
}

class ProductByCategoryError extends ProductByCategoryState {
  final String message;

  ProductByCategoryError(this.message);

  @override
  List<Object?> get props => [message];
}
