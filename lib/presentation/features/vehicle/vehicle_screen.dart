import 'package:codelab_tj/core/di/di.dart';
import 'package:codelab_tj/core/utils/bloc_wrapper.dart';
import 'package:codelab_tj/domain/model/route_model.dart';
import 'package:codelab_tj/domain/model/trip_model.dart';
import 'package:codelab_tj/domain/model/vehicle_model.dart';
import 'package:codelab_tj/presentation/features/vehicle/cubit/vehicle_cubit.dart';
import 'package:codelab_tj/presentation/features/vehicle/widgets/route_card.dart';
import 'package:codelab_tj/presentation/features/vehicle/widgets/trip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:timeago/timeago.dart' as timeago;

class VehicleScreen extends StatefulWidget implements BlocWrapper {
  const VehicleScreen({super.key});

  @override
  State<VehicleScreen> createState() => _VehicleScreenState();

  @override
  Widget provider() {
    return BlocProvider(
      create: (_) => getIt<VehicleCubit>(),
      child: this,
    );
  }
}

class _VehicleScreenState extends State<VehicleScreen> {
  @override
  void initState() {
    context.read<VehicleCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<VehicleCubit>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showRoutes(context);
        },
        child: const Icon(Icons.tune),
      ),
      appBar: AppBar(
        title: const Text('Vehicles'),
      ),
      body: SmartRefresher(
        controller: bloc.refreshController,
        onRefresh: bloc.reload,
        child: PagedListView<int, VehicleModel>(
          pagingController: bloc.pagingVehicleController,
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (context, item, index) {
              final attributes = item.attributes;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  color: Colors.white,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade100,
                      child:
                          const Icon(Icons.directions_bus, color: Colors.blue),
                    ),
                    title: Text(
                      'Bus ${attributes?.label ?? "-"}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '(${attributes?.latitude?.toStringAsFixed(5)}, ${attributes?.longitude?.toStringAsFixed(5)})',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.sync_alt,
                              size: 16,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Status: ${attributes?.currentStatus ?? "-"}',
                              style: TextStyle(
                                fontSize: 13,
                                color: _getStatusColor(
                                  attributes?.currentStatus,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 16,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Updated: ${timeago.format(DateTime.parse(attributes?.updatedAt ?? ''))}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String? status) {
    switch (status) {
      case 'IN_TRANSIT_TO':
        return Colors.green;
      case 'STOPPED_AT':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  void _showTrips(BuildContext context) {
    final bloc = context.read<VehicleCubit>();

    showModalBottomSheet<void>(
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: bloc,
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Text(
                'Trips',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: PagedListView<int, TripModel>.separated(
                  pagingController: bloc.pagingTripController,
                  builderDelegate: PagedChildBuilderDelegate(
                    itemBuilder: (_, trip, index) {
                      return BlocBuilder<VehicleCubit, VehicleState>(
                        builder: (_, state) {
                          final selectTrip = state.trips
                              .where((e) => e.id == trip.id)
                              .firstOrNull;

                          return TripCard(
                            trip: trip,
                            isSelected: selectTrip?.isSelected != null,
                            onChanged: (_) {
                              bloc.addOrRemoteTrip(trip);
                            },
                          );
                        },
                      );
                    },
                  ),
                  separatorBuilder: (context, index) => const SizedBox(),
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<VehicleCubit, VehicleState>(
                builder: (_, state) {
                  VoidCallback? onPressed;

                  if (state.trips.isNotEmpty) {
                    onPressed = bloc.doFilter;
                  }

                  return FilledButton(
                    onPressed: onPressed,
                    child: Text(
                      'Trip (${state.trips.length}) | Filter Vehicle',
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  void _showRoutes(BuildContext context) {
    final bloc = context.read<VehicleCubit>();

    showModalBottomSheet<void>(
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: bloc,
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Text(
                'Routes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: PagedListView<int, RouteModel>.separated(
                  pagingController: bloc.pagingRouteController,
                  builderDelegate: PagedChildBuilderDelegate(
                    itemBuilder: (_, route, index) {
                      return BlocBuilder<VehicleCubit, VehicleState>(
                        builder: (_, state) {
                          final selectedRoute = state.routes
                              .where((e) => e.id == route.id)
                              .firstOrNull;

                          return RouteCard(
                            route: selectedRoute ?? route,
                            isSelected: selectedRoute?.isSelected != null,
                            onChanged: (_) {
                              bloc.addOrRemoveRoute(route);
                            },
                          );
                        },
                      );
                    },
                  ),
                  separatorBuilder: (context, index) => const SizedBox(),
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<VehicleCubit, VehicleState>(
                builder: (_, state) {
                  VoidCallback? onPressed;
                  VoidCallback? onPressedFilterWithRoute;

                  if (state.routes.isNotEmpty) {
                    onPressed = () {
                      _showTrips(context);
                    };

                    onPressedFilterWithRoute = bloc.doFilterWithRoute;
                  }

                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 16,
                    children: [
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: onPressedFilterWithRoute,
                        child: const Text(
                          'Filter only with routes',
                        ),
                      ),
                      FilledButton(
                        onPressed: onPressed,
                        child: Text(
                          'Route(${state.routes.length}) | show Trip',
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
