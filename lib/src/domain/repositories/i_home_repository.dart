import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/home_response.dart';

abstract base class IHomeRepository extends Repository {
  Future<Result<HomeResponse, Failure>> getHomeData();
}
