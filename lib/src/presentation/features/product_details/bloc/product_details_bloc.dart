import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/domain/entites/product_details_entity.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';
import 'product_details_event.dart';
import 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductUseCase useCase;

  ProductDetailsBloc({required this.useCase}) : super(ProductDetailsInitial()) {
    on<LoadProductDetails>(_onLoadProduct);
  }

  Future<void> _onLoadProduct(
    LoadProductDetails event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(ProductDetailsLoading());

    final result = await useCase.getHomeData(slug: event.slug);

    if (result is FailureResult) {
      emit(
        ProductDetailsError(
          ((result as FailureResult).error as Failure).message,
        ),
      );
    }

    emit(ProductDetailsLoaded((result as Success).data as ProductDetailsEntity));
  }
}
