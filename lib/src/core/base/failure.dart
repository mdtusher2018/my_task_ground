import 'package:dio/dio.dart';
import 'package:scube_task/src/core/utils/logger.dart';

/// Represents high-level failure categories
/// used across the application.
enum FailureType {
  timeout,
  unauthorized,
  network,
  unknown,
}

/// A unified error model used across the app.
/// 
/// This converts low-level exceptions (Dio, custom exceptions, etc.)
/// into domain-friendly failure objects.
class Failure {
  /// Type of failure (network, timeout, etc.)
  final FailureType type;

  /// User-friendly error message
  final String message;

  /// Optional backend error code
  String? code;

  /// Optional stack trace for debugging
  StackTrace? stackTrace;

  Failure({
    required this.type,
    required this.message,
    String? code,
    StackTrace? stackTrace,
  });

  /// Maps any thrown exception into a structured [Failure].
  ///
  /// Handles:
  /// - Dio network errors
  /// - Custom domain exceptions
  /// - Unknown exceptions
  factory Failure.mapExceptionToFailure(Object e) {
    if (e is DioException) {
      final parsed = _parseError(e.response);
      final message = parsed?.message;
      final code = parsed?.code;

      // ⏳ Timeout Errors
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Failure(
          type: FailureType.timeout,
          message:
              message ??
              'The request timed out. Please try again or check your connection.',
        );
      }

      // 🌐 Network Errors
      if (e.type == DioExceptionType.connectionError) {
        return Failure(
          type: FailureType.network,
          message:
              message ??
              'Unable to connect to the server. Please check your internet connection.',
          code: code,
        );
      }

      // 🔐 Unauthorized (401)
      if (e.type == DioExceptionType.badResponse &&
          e.response?.statusCode == 401) {
        return Failure(
          type: FailureType.unauthorized,
          message: 'Unauthorized request. Please login again.',
          code: code,
        );
      }

      // ❓ Other Dio Errors
      return Failure(
        type: FailureType.unknown,
        message: message ?? 'Something went wrong.',
        code: code,
      );
    }

    // 🚨 Fallback for any unknown exception
    else {
      return Failure(
        type: FailureType.unknown,
        message: e.toString(),
      );
    }
  }

  /// Attempts to extract meaningful error details
  /// from a Dio [Response].
  ///
  /// Expected backend format:
  /// ```json
  /// {
  ///   "message": "...",
  ///   "statusCode": 400
  /// }
  /// ```
  ///
  /// Also supports nested validation errors:
  /// ```json
  /// {
  ///   "message": {
  ///     "email": "Invalid email",
  ///     "password": "Too short"
  ///   }
  /// }
  /// ```
  static ({String message, String? code})? _parseError(Response? response) {
    if (response == null) return null;

    try {
      if (response.data is Map<String, dynamic>) {
        String message;
        final errorMap = response.data;

        // Handle nested validation messages
        if (errorMap['message'] is Map<String, dynamic>) {
          final messageMap = errorMap['message'] as Map<String, dynamic>;
          message = messageMap.values.join(' ');
        } else {
          message =
              errorMap['message']?.toString() ?? 'Something went wrong';
        }

        return (
          message: message,
          code: errorMap['statusCode']?.toString(),
        );
      }
    } catch (e, stackTrace) {
      // Log parsing errors for debugging
      AppLogger.error(e.toString());
      AppLogger.error(stackTrace.toString());
      return null;
    }

    return null;
  }
}
