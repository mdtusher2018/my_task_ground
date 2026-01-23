import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/product_by_category_response/product_by_category_response.dart';
import 'package:scube_task/src/data/models/product_details_response/product_details_response.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

final class ProductRepository extends IProductRepository {
  final IApiService api;
  ProductRepository(this.api);

  @override
  Future<Result<ProductDetailsResponse, Failure>> getProductDetails({
    required String slug,
  }) async {
    return asyncGuard(() async {
      final response = await api.get(ApiEndpoints.productDetails(slug));
      return ProductDetailsResponse.fromJson(response);
    });
  }

  @override
  Future<Result<ProductByCategoryResponse, Failure>> getProductsByCategory({
    required String id,
  }) async {
    return asyncGuard(() async {
      final response = await api.get(ApiEndpoints.productById(id));
      return ProductByCategoryResponse.fromJson(response);
    });
  }
}
