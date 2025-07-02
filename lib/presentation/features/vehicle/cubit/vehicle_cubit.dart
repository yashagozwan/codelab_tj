import 'package:bloc/bloc.dart';
import 'package:codelab_tj/core/constants/status.dart';
import 'package:codelab_tj/core/utils/navigation_service.dart';
import 'package:codelab_tj/domain/model/filter_model.dart';
import 'package:codelab_tj/domain/model/route_model.dart';
import 'package:codelab_tj/domain/model/trip_model.dart';
import 'package:codelab_tj/domain/model/vehicle_model.dart';
import 'package:codelab_tj/domain/repository/route_repository.dart';
import 'package:codelab_tj/domain/repository/trip_repository.dart';
import 'package:codelab_tj/domain/repository/vehicle_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'vehicle_cubit.freezed.dart';
part 'vehicle_state.dart';

@injectable
class VehicleCubit extends Cubit<VehicleState> {
  VehicleCubit(
    this._vehicleRepository,
    this._routeRepository,
    this._tripRepository,
    this.refreshController,
    this._navigationService,
  ) : super(const VehicleState()) {
    _getVehicles();
    _getRoutes();
    _getTrips();
  }

  final VehicleRepository _vehicleRepository;
  final RouteRepository _routeRepository;
  final TripRepository _tripRepository;
  final RefreshController refreshController;
  final NavigationService _navigationService;

  final pagingVehicleController =
      PagingController<int, VehicleModel>(firstPageKey: 0);
  final pagingRouteController =
      PagingController<int, RouteModel>(firstPageKey: 0);
  final pagingTripController =
      PagingController<int, TripModel>(firstPageKey: 0);

  Future<void> init() async {}

  Future<void> reload() async {
    emit(
      state.copyWith(
        filterVehicle: const FilterModel(),
        filterRoute: const FilterModel(),
        filterTrips: const FilterModel(),
        routes: [],
        trips: [],
      ),
    );

    pagingVehicleController.refresh();
    refreshController.refreshCompleted();
  }

  void _getVehicles() {
    pagingVehicleController.addPageRequestListener((pageKey) async {
      final vehicles = await _vehicleRepository.getVehicles(
        state.filterVehicle.copyWith(
          offset: pageKey,
        ),
      );

      if (vehicles.length < 10) {
        pagingVehicleController.appendLastPage(vehicles);
      } else {
        pagingVehicleController.appendPage(vehicles, pageKey + 1);
      }
    });
  }

  void _getTrips() {
    pagingTripController.addPageRequestListener((pageKey) async {
      final trips = await _tripRepository.getTrips(
        state.filterTrips.copyWith(
          offset: pageKey,
        ),
      );

      if (trips.length < 10) {
        pagingTripController.appendLastPage(trips);
      } else {
        pagingTripController.appendPage(trips, pageKey + 1);
      }
    });
  }

  void _getRoutes() {
    pagingRouteController.addPageRequestListener((pageKey) async {
      final routes = await _routeRepository.getRoutes(
        state.filterRoute.copyWith(
          offset: pageKey,
        ),
      );

      if (routes.length < 10) {
        pagingRouteController.appendLastPage(routes);
      } else {
        pagingRouteController.appendPage(routes, pageKey + 1);
      }
    });
  }

  void addOrRemoveRoute(RouteModel route) {
    final routes = state.routes.where((e) => e.id == route.id);
    if (routes.isNotEmpty) {
      final filters = state.routes.where((e) => e.id != route.id).toList();
      emit(state.copyWith(routes: filters));
    } else {
      emit(
        state.copyWith(
          routes: [
            ...state.routes,
            RouteModel(
              attributes: route.attributes,
              id: route.id,
              isSelected: true,
              type: route.type,
            ),
          ],
        ),
      );
    }

    if (state.routes.isNotEmpty) {
      final routeIds = state.routes.map((e) => e.id).join(',');

      emit(
        state.copyWith(
          filterTrips: state.filterTrips.copyWith(
            routeIds: routeIds,
          ),
        ),
      );

      pagingTripController.refresh();
    }
  }

  void addOrRemoteTrip(TripModel trip) {
    final routes = state.trips.where((e) => e.id == trip.id);
    if (routes.isNotEmpty) {
      final filters = state.trips.where((e) => e.id != trip.id).toList();
      emit(state.copyWith(trips: filters));
    } else {
      emit(
        state.copyWith(
          trips: [
            ...state.trips,
            TripModel(
              attributes: trip.attributes,
              id: trip.id,
              isSelected: true,
              links: trip.links,
              relationships: trip.relationships,
              type: trip.type,
            ),
          ],
        ),
      );
    }
  }

  void doFilterWithRoute() {
    final routeIds = state.routes.map((e) => e.id).join(',');

    emit(
      state.copyWith(
        filterVehicle: state.filterVehicle.copyWith(
          routeIds: routeIds,
          tripsIds: null,
        ),
      ),
    );

    pagingVehicleController.refresh();

    emit(
      state.copyWith(
        filterRoute: const FilterModel(),
        routes: [],
      ),
    );

    _navigationService.pop();
  }

  void doFilter() {
    final routeIds = state.routes.map((e) => e.id).join(',');
    final tripIds = state.trips.map((e) => e.id).join(',');

    emit(
      state.copyWith(
        filterVehicle: state.filterVehicle.copyWith(
          routeIds: routeIds,
          tripsIds: tripIds,
        ),
      ),
    );

    pagingVehicleController.refresh();

    emit(
      state.copyWith(
        filterRoute: const FilterModel(),
        filterTrips: const FilterModel(),
        routes: [],
        trips: [],
      ),
    );

    _navigationService
      ..pop()
      ..pop();
  }

  @override
  Future<void> close() {
    pagingVehicleController.dispose();
    pagingRouteController.dispose();
    pagingTripController.dispose();
    return super.close();
  }
}
