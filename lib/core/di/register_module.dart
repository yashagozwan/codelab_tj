import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  PrettyDioLogger get prettyDioLogger => PrettyDioLogger();

  RefreshController get refreshController =>
      RefreshController(initialRefresh: true);
}
