part of 'vehicle_cubit.dart';

@freezed
abstract class VehicleState with _$VehicleState {
  const factory VehicleState({
    @Default(Status.init) Status status,
    @Default(FilterModel()) FilterModel filterVehicle,
    @Default(FilterModel()) FilterModel filterRoute,
    @Default(FilterModel()) FilterModel filterTrips,
    @Default([]) List<RouteModel> routes,
    @Default([]) List<TripModel> trips,
  }) = _Initial;
}
