import 'package:bloc/bloc.dart';
import 'package:codelab_tj/core/constants/status.dart';
import 'package:codelab_tj/domain/model/vehicle_detail_model.dart';
import 'package:codelab_tj/domain/repository/vehicle_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'vehicle_detail_cubit.freezed.dart';
part 'vehicle_detail_state.dart';

@injectable
class VehicleDetailCubit extends Cubit<VehicleDetailState> {
  VehicleDetailCubit(
    this._repository,
  ) : super(const VehicleDetailState());

  final VehicleRepository _repository;

  Future<void> init(String id) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _repository.getVehicle(id);
    emit(state.copyWith(status: Status.success, vehicle: result));
  }
}
