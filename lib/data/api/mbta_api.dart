import 'package:codelab_tj/core/constants/dot_env_key.dart';
import 'package:codelab_tj/data/api/custom_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@lazySingleton
class MbtaApi {
  const MbtaApi(
    this._dio,
    this._interceptor,
    this._prettyDioLogger,
  );

  final Dio _dio;
  final CustomInterceptor _interceptor;
  final PrettyDioLogger _prettyDioLogger;

  Dio getClient() {
    return _dio
      ..options.baseUrl = dotenv.env[DotEnvKey.baseUrl].toString()
      ..interceptors.addAll([
        _interceptor,
        if (kDebugMode) _prettyDioLogger,
      ]);
  }
}
