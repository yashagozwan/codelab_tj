part of 'vehicle_detail_cubit.dart';

@freezed
abstract class VehicleDetailState with _$VehicleDetailState {
  const factory VehicleDetailState({
    @Default(Status.init) Status status,
    @Default(VehicleDetailModel()) VehicleDetailModel vehicle,
  }) = _Initial;
}
