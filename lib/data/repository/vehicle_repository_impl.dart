import 'package:codelab_tj/data/remote/vehicle_remote_data_source.dart';
import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/vehicle_detail_model.dart';
import 'package:codelab_tj/domain/model/vehicle_model.dart';
import 'package:codelab_tj/domain/repository/vehicle_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: VehicleRepository)
class VehicleRepositoryImpl implements VehicleRepository {
  const VehicleRepositoryImpl(this._remote);

  final VehicleRemoteDataSource _remote;

  @override
  Future<VehicleDetailModel> getVehicle(String id) async {
    final response = await _remote.getVehicle(id);
    return response.data;
  }

  @override
  Future<List<VehicleModel>> getVehicles(FilterModel filter) async {
    final response = await _remote.getVehicles(
      offset: filter.offset,
      limit: filter.limit,
      sort: filter.sort,
      routeIds: filter.routeIds,
      tripIds: filter.tripsIds,
    );

    return response.data;
  }
}
