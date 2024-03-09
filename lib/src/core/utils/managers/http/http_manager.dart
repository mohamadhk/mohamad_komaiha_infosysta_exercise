import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'http_methods.dart';

abstract class HttpManager {
  Future<Response> request({
    required String path,
    required HttpMethods method,
    Map<String, dynamic>? params,
    bool isFormData = false,
    Function(int sent, int total)? onSendProgress,
    Function(int sent, int total)? onReceiveProgress,
  });

  void runPerformanceLog();
}

class HttpManagerImpl implements HttpManager {
  late final Dio _dio;
  late final Dio _authDio;
  late bool isPerformanceLogActive;

  HttpManagerImpl({required BaseOptions baseOptions}) {
    initHttpManager(baseOptions: baseOptions);
  }

  Future<void> initHttpManager({required BaseOptions baseOptions}) async {
    _dio = Dio(baseOptions);
    _authDio = Dio(baseOptions);

    _authDio.interceptors.addAll([
      _logInterceptor(),
    ]);

    _dio.interceptors.addAll([
      _logInterceptor(),
    ]);

  }

  @override
  Future<Response> request({
    required String path,
    required HttpMethods method,
    Map<String, dynamic>? params,
    bool isFormData = false,
    Function(int sent, int total)? onSendProgress,
    Function(int sent, int total)? onReceiveProgress,
  }) async {
    debugPrint('request Method $method');
    debugPrint('request params $params');

    if (params != null) {
      _dio.options.queryParameters.addAll(params);
    }

    switch (method) {
      case HttpMethods.Get:
        return _dio.get(path);
      case HttpMethods.Post:
        return _dio.post(path,
            data: isFormData ? FormData.fromMap(params!) : params,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress);
      case HttpMethods.Put:
        return _dio.put(path,
            data: isFormData ? FormData.fromMap(params!) : params);
      case HttpMethods.Delete:
        return _dio.delete(path);
      case HttpMethods.Patch:
        return _dio.patch(
          path,
          data: isFormData ? FormData.fromMap(params!) : params,
        );
    }
  }

  @override
  void runPerformanceLog() {
    if (!isPerformanceLogActive) {
      isPerformanceLogActive = true;
    }
  }

  InterceptorsWrapper _logInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        debugPrint(
          'Call: => PATH: ${options.path}',
        );
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint(
          'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
        );
        return handler.next(response);
      },
      onError: (DioError err, handler) async {
        print(err.response);
        debugPrint(
          'ERROR[${err.response?.statusCode ?? 0}] => PATH: ${err.requestOptions.path}',
        );

        return handler.next(err);
      },
    );
  }
}