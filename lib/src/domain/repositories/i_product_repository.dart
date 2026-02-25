import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/all_products_response.dart';

abstract base class IProductRepository extends Repository {

   Future<Result<List<Product>, Failure>> getALLProducts({
    required int page,
  });
}
