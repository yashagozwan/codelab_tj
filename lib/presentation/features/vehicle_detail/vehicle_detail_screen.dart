import 'package:codelab_tj/core/constants/status.dart';
import 'package:codelab_tj/core/di/di.dart';
import 'package:codelab_tj/core/utils/bloc_wrapper.dart';
import 'package:codelab_tj/presentation/features/vehicle_detail/cubit/vehicle_detail_cubit.dart';
import 'package:codelab_tj/presentation/features/vehicle_detail/vehicle_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleDetailScreen extends StatelessWidget implements BlocWrapper {
  const VehicleDetailScreen({
    required this.vehicleId,
    super.key,
  });

  final String vehicleId;

  @override
  Widget provider() {
    return BlocProvider(
      create: (context) => getIt<VehicleDetailCubit>()
        ..init(
          vehicleId,
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<VehicleDetailCubit, VehicleDetailState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return VehicleDetailCard(vehicle: state.vehicle);
        },
      ),
    );
  }
}
