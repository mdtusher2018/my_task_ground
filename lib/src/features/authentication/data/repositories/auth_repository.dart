import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/features/authentication/data/models/sign_in/signin_response.dart';
import 'package:scube_task/src/features/authentication/domain/repositories/i_auth_repository.dart';

final class AuthRepository extends IAuthRepository {
  final IApiService api;
  final ILocalStorageService localStorageService;
  AuthRepository(this.api, this.localStorageService);

  @override
  Future<Result<SigninResponse, Failure>> login(String email, String password) {
    return asyncGuard(() async {
      final res = await api.post(ApiEndpoints.signin, {
        "email": email,
        "password": password,
      });

      return SigninResponse.fromJson(res);
    });
  }
}
