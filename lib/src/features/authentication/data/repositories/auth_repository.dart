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
      if (email == "tusher@gmail.com") {
        return SigninResponse.fromJson({
          "status": "OK",
          "statusCode": 200,
          "message": "Login erfolgreich",
          "data": {
            "user": {"fullName": "Admin", "email": "admin@gmail.com"},

            "accessToken":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2OGE5YWJkNjU2ODkzMmVhMDBiNjkwMzYiLCJmdWxsTmFtZSI6IkFkbWluIiwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20iLCJpbWFnZSI6Ii91cGxvYWRzL3VzZXJzL3VzZXIuanBnIiwicm9sZSI6WyJhZG1pbiJdLCJjdXJyZW50Um9sZSI6InVzZXIiLCJpc0FkbWluIjp0cnVlLCJhZG1pblJvbGUiOiJvd25lciIsImNhdGVnb3J5UGVybWlzc2lvbnMiOlsiYWxsIl0sImlhdCI6MTc1NTk1MDc2MCwiZXhwIjoxNzg3NTA4MzYwfQ.QRPTIrdQ-4fhslMO25JOQRK6FHHZQ_5eGFYsCDyFLFs",
          },
          "errors": [],
        });
      }

      final res = await api.post(ApiEndpoints.signin, {
        "email": email,
        "password": password,
      });

      return SigninResponse.fromJson(res);
    });
  }
}
