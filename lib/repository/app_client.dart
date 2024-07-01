import 'dart:io';

import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:project_demo/repository/api_path.dart';
import 'package:project_demo/repository/app_interceptor.dart';

class AppClient {
  AppClient._();

  static AppClient? _instance;

  static AppClient get instance {
    if (_instance != null) {
      return _instance ?? AppClient._();
    } else {
      _instance = AppClient._();
      return _instance ?? AppClient._();
    }
  }

  late Dio dio;

  Future<void> initNetwork() async {
    BaseOptions baseOptions = BaseOptions(
      connectTimeout: Duration(seconds: 35000),
      receiveTimeout: Duration(seconds: 35000),
      baseUrl: ApiPath.baseURl,
      responseType: ResponseType.json,
      contentType: ContentType.json.toString(),
    );

    dio = await Dio(baseOptions)
      ..interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true))
      ..interceptors.add(
        AppInterceptors(),
      );

    (dio.httpClientAdapter as dynamic).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    };
  }
}
