import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/all_products_response.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';

final class ProductRepository extends IProductRepository {
  final IApiService api;
  ProductRepository(this.api);

  @override
  Future<Result<List<Product>, Failure>> getALLProducts({
    required int page,
  }) async {
    return asyncGuard(() async {
      final response = await api.get(ApiEndpoints.product(page));
      final produceList =(response as List).map((e) => Product.fromJson(e),).toList();
      return produceList;
    });
  }
}
