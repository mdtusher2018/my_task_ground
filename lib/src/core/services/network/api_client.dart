import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:scube_task/src/core/utils/logger.dart';
import 'package:scube_task/src/core/services/network/error/api_exception.dart';
import 'package:scube_task/src/core/services/network/interceptor.dart/logger_interceptor.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';

/// ==========================================================
/// API CLIENT
/// ==========================================================
///
/// Centralized HTTP client using Dio.
/// Supports:
/// - GET, POST, PUT, PATCH, DELETE requests
/// - Multipart requests (file uploads)
/// - Global response processing and error handling
/// - Optional interceptors (logging, auth, retry, refresh token)
class ApiClient {
  final Dio dio;
  final ILocalStorageService localStorage;
  final GlobalKey<NavigatorState> navigatorKey;

  ApiClient({
    Dio? dio,
    required String baseUrl,
    required this.localStorage,
    required this.navigatorKey,
  }) : dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: baseUrl,
                headers: {HttpHeaders.contentTypeHeader: 'application/json'},
              ),
            ) {
    // Add interceptors
    this.dio.interceptors.addAll([
      LoggingInterceptor(),
    ]);
  }

  /// ----------------------------
  /// Standard HTTP Methods
  /// ----------------------------
  Future<dynamic> get(Uri url, {Map<String, String>? headers}) async =>
      _processResponse(await dio.get(url.toString(), options: Options(headers: headers)));

  Future<dynamic> post(Uri url, {Map<String, String>? headers, dynamic body}) async =>
      _processResponse(await dio.post(url.toString(), data: body, options: Options(headers: headers)));

  Future<dynamic> put(Uri url, {Map<String, String>? headers, dynamic body}) async =>
      _processResponse(await dio.put(url.toString(), data: body, options: Options(headers: headers)));

  Future<dynamic> patch(Uri url, {Map<String, String>? headers, dynamic body}) async =>
      _processResponse(await dio.patch(url.toString(), data: body, options: Options(headers: headers)));

  Future<dynamic> delete(Uri url, {Map<String, String>? headers, dynamic body}) async =>
      _processResponse(await dio.delete(url.toString(), data: body, options: Options(headers: headers)));

  /// ----------------------------
  /// Multipart request for file uploads
  /// ----------------------------
  Future<dynamic> sendMultipart(
    Uri url, {
    String method = 'POST',
    Map<String, String>? headers,
    Map<String, File>? files,
    dynamic body,
    String bodyFieldName = 'data',
  }) async {
    final form = FormData();

    // Add body fields
    if (body != null) {
      if (body is Map) {
        body.forEach((k, v) => form.fields.add(MapEntry(k, v.toString())));
      } else {
        form.fields.add(MapEntry(bodyFieldName, body.toString()));
      }
    }

    // Add files
    if (files != null) {
      for (final entry in files.entries) {
        form.files.add(
          MapEntry(
            entry.key,
            await MultipartFile.fromFile(
              entry.value.path,
              filename: entry.value.path.split('/').last,
            ),
          ),
        );
      }
    }

    final res = await dio.request(
      url.toString(),
      data: form,
      options: Options(method: method, headers: headers),
    );
    return _processResponse(res);
  }

  /// ----------------------------
  /// Global response processing
  /// ----------------------------
  dynamic _processResponse(Response r) {
    final statusCode = r.statusCode ?? 0;
    final data = r.data;

    // Optional: log response
    AppLogger.log('API RESPONSE: ${r.requestOptions.uri} -> $statusCode : $data');

    // Success responses
    if (statusCode >= 200 && statusCode < 300) return data;

    // Extract error message
    final message = data is Map && data['message'] != null
        ? data['message'] as String
        : 'Unknown error';

    // Throw custom API exception
    throw ApiException(statusCode, message, data: data);
  }
}