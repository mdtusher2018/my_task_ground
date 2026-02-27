import 'package:dio/dio.dart';
import '../../../utils/logger.dart';

/// ==========================================================
/// DIO LOGGING INTERCEPTOR
/// ==========================================================
/// 
/// Interceptor that logs all Dio HTTP requests, responses, and errors.
/// Useful for debugging API calls in development.
/// 
/// Logging is tag-based (`DIO`) to easily filter logs.
class LoggingInterceptor extends Interceptor {
  /// Logs outgoing request details
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    AppLogger.log(
      '➡️ Request: [${options.method}] ${options.uri}\n'
      'Headers: ${options.headers}\n'
      'Data: ${options.data}',
      tag: 'DIO',
    );
    handler.next(options);
  }

  /// Logs incoming response details
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    AppLogger.log(
      '✅ Response: [${response.statusCode}] ${response.requestOptions.uri}\n'
      'Data: ${response.data}',
      tag: 'DIO',
    );
    handler.next(response);
  }

  /// Logs error details
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    AppLogger.error(
      '❌ Error: [${err.response?.statusCode}] ${err.requestOptions.uri}\n'
      'Message: ${err.message}\n'
      'Data: ${err.response?.data}',
      error: err,
      stackTrace: err.stackTrace,
      tag: 'DIO',
    );
    handler.next(err);
  }
}