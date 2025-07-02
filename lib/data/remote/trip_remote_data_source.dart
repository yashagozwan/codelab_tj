import 'package:codelab_tj/core/constants/query_key.dart';
import 'package:codelab_tj/domain/model/response_model.dart';
import 'package:codelab_tj/domain/model/trip_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'trip_remote_data_source.g.dart';

@RestApi()
abstract class TripRemoteDataSource {
  factory TripRemoteDataSource(
    Dio dio, {
    String? baseUrl,
  }) = _TripRemoteDataSource;

  @GET('/trips')
  Future<ResponseModel<List<TripModel>>> getTrips({
    @Query(QueryKey.pOffset) required int offset,
    @Query(QueryKey.pLimit) required int limit,
    @Query(QueryKey.sort) String? sort,
    @Query(QueryKey.fRoute) String? routeIds,
  });
}
