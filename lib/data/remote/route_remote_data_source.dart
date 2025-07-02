import 'package:codelab_tj/core/constants/query_key.dart';
import 'package:codelab_tj/domain/model/response_model.dart';
import 'package:codelab_tj/domain/model/route_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'route_remote_data_source.g.dart';

@RestApi()
abstract class RouteRemoteDataSource {
  factory RouteRemoteDataSource(
    Dio dio, {
    String? baseUrl,
  }) = _RouteRemoteDataSource;

  @GET('/routes')
  Future<ResponseModel<List<RouteModel>>> getRoutes({
    @Query(QueryKey.pOffset) required int offset,
    @Query(QueryKey.pLimit) required int limit,
    @Query(QueryKey.sort) String? sort,
  });
}
