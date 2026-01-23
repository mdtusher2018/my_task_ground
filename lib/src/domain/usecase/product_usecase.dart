// features/authentication/domain/usecases/login_usecase.dart

import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/product_by_category_response/product_by_category_response.dart';
import 'package:scube_task/src/data/models/product_response/product_details_response.dart';
import 'package:scube_task/src/domain/entites/product_by_category_entity.dart';
import 'package:scube_task/src/domain/entites/product_details_entity.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

class ProductUseCase {
  final IProductRepository repository;

  ProductUseCase({required this.repository});

  Future<Result<ProductDetailsEntity, Failure>> getHomeData({
    required String slug,
  }) async {
    final result = await repository.getProductDetails(slug: slug);

    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    return Success(
      ((result as Success).data as ProductDetailsResponse).toEntity(),
    );
  }

  Future<Result<ProductByCategoryEntity, Failure>> getProductsByCategory({
    required String id,
  }) async {
    final result = await repository.getProductDetails(slug: id);

    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    return Success(
      ((result as Success).data as ProductByCategoryResponse).toEntity(),
    );
  }
}
