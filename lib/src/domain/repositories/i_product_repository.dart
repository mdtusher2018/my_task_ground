import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/product_by_category_response/product_by_category_response.dart';
import 'package:scube_task/src/data/models/product_details_response/product_details_response.dart';

abstract base class IProductRepository extends Repository {
  Future<Result<ProductDetailsResponse, Failure>> getProductDetails({
    required String slug,
  });
  Future<Result<ProductByCategoryResponse, Failure>> getProductsByCategory({
    required String id,
  });
}
