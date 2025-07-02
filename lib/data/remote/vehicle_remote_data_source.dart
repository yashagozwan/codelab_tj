import 'package:codelab_tj/core/constants/query_key.dart';
import 'package:codelab_tj/domain/model/response_model.dart';
import 'package:codelab_tj/domain/model/vehicle_detail_model.dart';
import 'package:codelab_tj/domain/model/vehicle_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'vehicle_remote_data_source.g.dart';

@RestApi()
abstract class VehicleRemoteDataSource {
  factory VehicleRemoteDataSource(
    Dio dio, {
    String? baseUrl,
  }) = _VehicleRemoteDataSource;

  @GET('/vehicles')
  Future<ResponseModel<List<VehicleModel>>> getVehicles({
    @Query(QueryKey.pOffset) required int offset,
    @Query(QueryKey.pLimit) required int limit,
    @Query(QueryKey.sort) String? sort,
    @Query(QueryKey.fRoute) String? routeIds,
    @Query(QueryKey.fTrip) String? tripIds,
  });

  @GET('/vehicles/{id}')
  Future<ResponseModel<VehicleDetailModel>> getVehicle(
    @Path() String id,
  );
}
