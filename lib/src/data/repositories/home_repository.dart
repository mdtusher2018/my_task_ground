import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/home_response.dart';
import 'package:scube_task/src/domain/repositories/i_home_repository.dart';

final class HomeRepository extends IHomeRepository {
  final IApiService api;
  final ILocalStorageService localStorageService;
  HomeRepository(this.api, this.localStorageService);

  @override
  Future<Result<HomeResponse, Failure>> getHomeData() {
    return asyncGuard(() async {
      final response = await api.get(ApiEndpoints.home);
      return HomeResponse.fromJson(response);
    });
  }
}
