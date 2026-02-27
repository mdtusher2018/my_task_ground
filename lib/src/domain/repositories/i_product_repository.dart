
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/all_products_response.dart';

/// ==========================================================
/// PRODUCT REPOSITORY INTERFACE
/// ==========================================================
///
/// Defines the contract for fetching products data.
/// Extends the base [Repository] for safe async operations.
abstract base class IProductRepository extends Repository {
  
  /// Fetches all products for a given [page].
  ///
  /// Returns a [Result] containing either:
  /// - List of Product on success
  /// - [Failure] on error
  Future<Result<List<Product>, Failure>> getALLProducts({
    required int page,
  });
}