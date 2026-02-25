// features/authentication/domain/usecases/login_usecase.dart

import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/all_products_response.dart';
import 'package:scube_task/src/domain/entites/product_entity.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

class ProductUseCase {
  final IProductRepository repository;

  ProductUseCase({required this.repository});


Future<Result<List<ProductEntity>, Failure>> getAllProducts({
  required int page,
}) async {
  final result = await repository.getALLProducts(page: page);

  if (result is FailureResult) {
    return FailureResult((result as FailureResult).error);
  }
 final productsList=((result as Success).data as List<Product>);
  return Success(
   productsList.map((e) => e.toEntity(),).toList(),
  );
}




}
