// lib/core/network/api_client.dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:scube_task/src/core/utils/logger.dart';
import 'package:scube_task/src/core/services/network/error/api_exception.dart';
import 'package:scube_task/src/core/services/network/interceptor.dart/logger_interceptor.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';

class ApiClient {
  final Dio dio;
  final ILocalStorageService localStorage;
  final GlobalKey<NavigatorState> navigatorKey;

  ApiClient({
    Dio? dio,
    required String baseUrl,
    required this.localStorage,
    required this.navigatorKey,
  }) : dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: baseUrl,

               headers: {HttpHeaders.contentTypeHeader: 'application/json'},
             ),
           ) {
    // add interceptors
    this.dio.interceptors.addAll([
      // AuthInterceptor(localStorage),
      // RefreshTokenInterceptor(this.dio, localStorage, navigatorKey),
      // RetryOnConnectionChangeInterceptor(dio: this.dio),
      LoggingInterceptor(),
    ]);
  }

  Future<dynamic> get(Uri url, {Map<String, String>? headers}) async {
    final res = await dio.get(
      url.toString(),
      options: Options(headers: headers),
    );
    return _processResponse(res);
  }

  Future<dynamic> post(
    Uri url, {
    Map<String, String>? headers,
    dynamic body,
  }) async {
    final res = await dio.post(
      url.toString(),
      data: body,
      options: Options(headers: headers),
    );
    return _processResponse(res);
  }

  Future<dynamic> put(
    Uri url, {
    Map<String, String>? headers,
    dynamic body,
  }) async {
    final res = await dio.put(
      url.toString(),
      data: body,
      options: Options(headers: headers),
    );
    return _processResponse(res);
  }

  Future<dynamic> patch(
    Uri url, {
    Map<String, String>? headers,
    dynamic body,
  }) async {
    final res = await dio.patch(
      url.toString(),
      data: body,
      options: Options(headers: headers),
    );
    return _processResponse(res);
  }

  Future<dynamic> delete(
    Uri url, {
    Map<String, String>? headers,
    dynamic body,
  }) async {
    final res = await dio.delete(
      url.toString(),
      data: body,
      options: Options(headers: headers),
    );
    return _processResponse(res);
  }

  Future<dynamic> sendMultipart(
    Uri url, {
    String method = 'POST',
    Map<String, String>? headers,
    Map<String, File>? files,
    dynamic body,
    String bodyFieldName = 'data',
  }) async {
    final form = FormData();
    if (body != null) {
      if (body is Map) {
        body.forEach((k, v) => form.fields.add(MapEntry(k, v.toString())));
      } else {
        form.fields.add(MapEntry(bodyFieldName, body.toString()));
      }
    }
    if (files != null) {
      for (final e in files.entries) {
        form.files.add(
          MapEntry(
            e.key,
            await MultipartFile.fromFile(
              e.value.path,
              filename: e.value.path.split('/').last,
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

  dynamic _processResponse(Response r) {
    // global unauthorized handled in interceptors, but re-check
    if (r.statusCode == 401) {
      // optional fallback
    }

    final statusCode = r.statusCode ?? 0;
    final data = r.data;

    AppLogger.log(
      'API RESPONSE: ${r.requestOptions.uri} -> $statusCode : $data',
    );

    if (statusCode >= 200 && statusCode < 300) return data;

    final message = data is Map && data['message'] != null
        ? data['message'] as String
        : 'Unknown error';
    throw ApiException(statusCode, message, data: data);
  }
}
