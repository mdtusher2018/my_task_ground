import 'package:flutter/foundation.dart';

/// ==========================================================
/// API EXCEPTION
/// ==========================================================
/// 
/// Represents an error returned from API calls.
/// Can include HTTP status code, message, and optional payload data.
class ApiException implements Exception {
  /// HTTP status code returned by the API
  final int statusCode;

  /// User-friendly or backend error message
  final String message;

  /// Optional extra data from the API (e.g., error body)
  final dynamic data;

  /// Creates an [ApiException] with required status code and message
  /// Optionally include additional API response data.
  ApiException(this.statusCode, this.message, {this.data});

  /// Converts the exception into a readable string
  /// 
  /// - Shows full details in debug mode
  /// - Shows only message in release mode
  @override
  String toString() => kDebugMode
      ? "ApiException - $statusCode: $message"
      : message;
}