// lib/core/network/interceptors/auth_interceptor.dart
import 'package:dio/dio.dart';
import 'package:scube_task/src/core/utils/logger.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/services/storage/storage_key.dart';

class AuthInterceptor extends Interceptor {
  final ILocalStorageService _localStorage;

  AuthInterceptor(this._localStorage);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final accessToken =
          await _localStorage.readKey(StorageKey.accessToken) as String?;

      if (accessToken != null && accessToken.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $accessToken';
        options.headers['SignUpToken'] = 'signUpToken $accessToken';
      }
      options.headers['Accept-Language'] = 'en';
    } catch (e, st) {
      AppLogger.error("AuthInterceptor error: $e\n$st");
    }

    return handler.next(options);
  }
}
