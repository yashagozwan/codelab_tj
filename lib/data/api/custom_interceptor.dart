import 'package:codelab_tj/core/constants/dot_env_key.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({'api_key': dotenv.env[DotEnvKey.apiKey]});
    super.onRequest(options, handler);
  }
}
