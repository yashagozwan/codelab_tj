import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/vehicle_detail_model.dart';
import 'package:codelab_tj/domain/model/vehicle_model.dart';

abstract class VehicleRepository {
  Future<List<VehicleModel>> getVehicles(FilterModel filter);
  Future<VehicleDetailModel> getVehicle(String id);
}
