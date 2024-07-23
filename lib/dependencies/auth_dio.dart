import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kcell_fwa_mobile/envirement/environment_config.dart';

class AuthDio {
  Dio dio = Dio(BaseOptions(baseUrl: EnvironmentConfig.apiUrl));

  Dio get instance => dio;

  set path(String path) => dio = Dio(
        BaseOptions(baseUrl: EnvironmentConfig.apiUrl + path),
      )..interceptors.addAll([
          AuthDioInterceptor(),
        ]);

  AuthDio() {
    dio.interceptors.addAll([
      AuthDioInterceptor(),
    ]);
  }
}

class AuthDioInterceptor extends Interceptor {
  Dio dio = Dio(BaseOptions(baseUrl: EnvironmentConfig.apiUrl));
  Box tokensBox = Hive.box('tokens');

  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer ${tokensBox.get('access')}';

    super.onRequest(options, handler);
  }
}
