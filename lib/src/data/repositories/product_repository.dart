import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/all_products_response.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

/// ==========================================================
/// PRODUCT REPOSITORY
/// ==========================================================
///
/// Handles API calls related to products.
/// Returns [Result] objects to safely encapsulate success or failure.
final class ProductRepository extends IProductRepository {
  /// API client instance (injected via constructor)
  final IApiService api;

  ProductRepository(this.api);

  /// ----------------------------
  /// Fetch all products
  /// ----------------------------
  /// [page]: page number for pagination
  /// Returns a [Result] containing either a list of [Product] or a [Failure].
  @override
  Future<Result<List<Product>, Failure>> getALLProducts({
    required int page,
  }) async {
    return asyncGuard(() async {
      // Call API to get products
      final response = await api.get(ApiEndpoints.product(page));

      // Parse response to List<Product>
      final productList = (response as List)
          .map((e) => Product.fromJson(e))
          .toList();

      return productList;
    });
  }
}