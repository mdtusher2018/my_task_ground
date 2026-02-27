import 'dart:io';

/// ==========================================================
/// API SERVICE INTERFACE
/// ==========================================================
///
/// Defines the contract for all API service implementations.
/// Supports standard REST methods and multipart file uploads.
/// Implemented by [ApiService].
abstract class IApiService {
  /// Performs a GET request to the specified [endpoint].
  /// [headers] can override default headers.
  /// If [fullUrl] is true, [endpoint] is treated as a full URL.
  Future<dynamic> get(
    String endpoint, {
    Map<String, String>? headers,
    bool fullUrl = false,
  });

  /// Performs a POST request with optional [body].
  Future<dynamic> post(
    String endpoint,
    dynamic body, {
    Map<String, String>? headers,
    bool fullUrl = false,
  });

  /// Performs a PUT request with optional [body].
  Future<dynamic> put(
    String endpoint,
    dynamic body, {
    Map<String, String>? headers,
    bool fullUrl = false,
  });

  /// Performs a PATCH request with optional [body].
  Future<dynamic> patch(
    String endpoint,
    dynamic body, {
    Map<String, String>? headers,
    bool fullUrl = false,
  });

  /// Performs a DELETE request with optional [body].
  Future<dynamic> delete(
    String endpoint, {
    Map<String, String>? headers,
    dynamic body,
    bool fullUrl = false,
  });

  /// Performs a multipart request for file uploads.
  /// 
  /// [method] defaults to 'POST'.
  /// [files] maps field names to [File] objects.
  /// [body] can include additional fields.
  /// [bodyFieldName] is used if [body] is a single value instead of a map.
  /// [headers] can override default headers.
  /// [fullUrl] treats [endpoint] as a full URL if true.
  Future<dynamic> multipart(
    String endpoint, {
    String method = 'POST',
    Map<String, File>? files,
    dynamic body,
    String bodyFieldName = 'data',
    Map<String, String>? headers,
    bool fullUrl = false,
  });
}