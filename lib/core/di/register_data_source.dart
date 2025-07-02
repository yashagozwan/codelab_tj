import 'package:codelab_tj/core/di/di.dart';
import 'package:codelab_tj/data/api/mbta_api.dart';
import 'package:codelab_tj/data/remote/route_remote_data_source.dart';
import 'package:codelab_tj/data/remote/trip_remote_data_source.dart';
import 'package:codelab_tj/data/remote/vehicle_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterDataSource {
  Dio get _client => getIt<MbtaApi>().getClient();

  @lazySingleton
  VehicleRemoteDataSource get vehicleRemoteDataSource =>
      VehicleRemoteDataSource(_client);

  @lazySingleton
  RouteRemoteDataSource get routeRemoteDataSource =>
      RouteRemoteDataSource(_client);

  @lazySingleton
  TripRemoteDataSource get tripRemoteDataSource =>
      TripRemoteDataSource(_client);
}
