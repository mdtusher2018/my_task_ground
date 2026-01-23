import 'package:equatable/equatable.dart';
import 'package:scube_task/src/domain/entites/product_details_entity.dart';

abstract class ProductDetailsState extends Equatable {
  const ProductDetailsState();

  @override
  List<Object?> get props => [];
}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsLoading extends ProductDetailsState {}

class ProductDetailsLoaded extends ProductDetailsState {
  final ProductDetailsEntity product;
  final String selectedImage;

  const ProductDetailsLoaded({
    required this.product,
    required this.selectedImage,
  });

  ProductDetailsLoaded copyWith({
    String? selectedImage,
  }) {
    return ProductDetailsLoaded(
      product: product,
      selectedImage: selectedImage ?? this.selectedImage,
    );
  }
}


class ProductDetailsError extends ProductDetailsState {
  final String message;

  const ProductDetailsError(this.message);

  @override
  List<Object?> get props => [message];
}
