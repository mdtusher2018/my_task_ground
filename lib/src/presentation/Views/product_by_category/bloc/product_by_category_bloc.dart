import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/domain/entites/product_by_category_entity.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';

import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_state.dart';

import 'product_by_category_event.dart';

class ProductByCategoryBloc
    extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {
  final ProductUseCase useCase;

  ProductByCategoryBloc(this.useCase) : super(ProductByCategoryInitial()) {
    on<FetchProductByCategoryData>((event, emit) async {
      emit(ProductByCategoryLoading());

      final result = await useCase.getProductsByCategory(id: event.id);

      if (result is FailureResult) {
        emit(
          ProductByCategoryError(
            ((result as FailureResult).error as Failure).message,
          ),
        );
      }

      emit(
        ProductByCategoryLoaded(
          (result as Success).data as ProductByCategoryEntity,
        ),
      );
    });
  }
}
