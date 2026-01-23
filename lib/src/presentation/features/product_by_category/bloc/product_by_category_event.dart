import 'package:equatable/equatable.dart';

abstract class ProductByCategoryEvent extends Equatable {
  const ProductByCategoryEvent();
  @override
  List<Object> get props => [];
}

class FetchProductByCategoryData extends ProductByCategoryEvent {
  final String id;

  const FetchProductByCategoryData(this.id);
  @override
  List<Object> get props => [id];
}
