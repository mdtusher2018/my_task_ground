import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/all_products_response.dart';
import 'package:scube_task/src/domain/entites/product_entity.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

/// ==========================================================
/// PRODUCT USE CASE
/// ==========================================================
///
/// Handles the business logic for fetching products and converting
/// data models into domain entities.
class ProductUseCase {
  final IProductRepository repository;

  ProductUseCase({required this.repository});

  /// Fetches all products for the given [page].
  ///
  /// Returns a [Result] containing either:
  /// - List of ProductEntity on success
  /// - [Failure] on error
  Future<Result<List<ProductEntity>, Failure>> getAllProducts({
    required int page,
  }) async {
    final result = await repository.getALLProducts(page: page);

    // Handle failure case
    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    // Convert data models to domain entities
    final productsList = (result as Success).data as List<Product>;
    final productEntities = productsList.map((e) => e.toEntity()).toList();

    return Success(productEntities);
  }
}