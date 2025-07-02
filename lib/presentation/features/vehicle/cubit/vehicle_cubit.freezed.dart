// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VehicleState {
  Status get status;
  FilterModel get filterVehicle;
  FilterModel get filterRoute;
  FilterModel get filterTrips;
  List<RouteModel> get routes;
  List<TripModel> get trips;

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleStateCopyWith<VehicleState> get copyWith =>
      _$VehicleStateCopyWithImpl<VehicleState>(
          this as VehicleState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filterVehicle, filterVehicle) ||
                other.filterVehicle == filterVehicle) &&
            (identical(other.filterRoute, filterRoute) ||
                other.filterRoute == filterRoute) &&
            (identical(other.filterTrips, filterTrips) ||
                other.filterTrips == filterTrips) &&
            const DeepCollectionEquality().equals(other.routes, routes) &&
            const DeepCollectionEquality().equals(other.trips, trips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      filterVehicle,
      filterRoute,
      filterTrips,
      const DeepCollectionEquality().hash(routes),
      const DeepCollectionEquality().hash(trips));

  @override
  String toString() {
    return 'VehicleState(status: $status, filterVehicle: $filterVehicle, filterRoute: $filterRoute, filterTrips: $filterTrips, routes: $routes, trips: $trips)';
  }
}

/// @nodoc
abstract mixin class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) _then) =
      _$VehicleStateCopyWithImpl;
  @useResult
  $Res call(
      {Status status,
      FilterModel filterVehicle,
      FilterModel filterRoute,
      FilterModel filterTrips,
      List<RouteModel> routes,
      List<TripModel> trips});

  $FilterModelCopyWith<$Res> get filterVehicle;
  $FilterModelCopyWith<$Res> get filterRoute;
  $FilterModelCopyWith<$Res> get filterTrips;
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res> implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._self, this._then);

  final VehicleState _self;
  final $Res Function(VehicleState) _then;

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? filterVehicle = null,
    Object? filterRoute = null,
    Object? filterTrips = null,
    Object? routes = null,
    Object? trips = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      filterVehicle: null == filterVehicle
          ? _self.filterVehicle
          : filterVehicle // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      filterRoute: null == filterRoute
          ? _self.filterRoute
          : filterRoute // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      filterTrips: null == filterTrips
          ? _self.filterTrips
          : filterTrips // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      routes: null == routes
          ? _self.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      trips: null == trips
          ? _self.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
    ));
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filterVehicle {
    return $FilterModelCopyWith<$Res>(_self.filterVehicle, (value) {
      return _then(_self.copyWith(filterVehicle: value));
    });
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filterRoute {
    return $FilterModelCopyWith<$Res>(_self.filterRoute, (value) {
      return _then(_self.copyWith(filterRoute: value));
    });
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filterTrips {
    return $FilterModelCopyWith<$Res>(_self.filterTrips, (value) {
      return _then(_self.copyWith(filterTrips: value));
    });
  }
}

/// @nodoc

class _Initial implements VehicleState {
  const _Initial(
      {this.status = Status.init,
      this.filterVehicle = const FilterModel(),
      this.filterRoute = const FilterModel(),
      this.filterTrips = const FilterModel(),
      final List<RouteModel> routes = const [],
      final List<TripModel> trips = const []})
      : _routes = routes,
        _trips = trips;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final FilterModel filterVehicle;
  @override
  @JsonKey()
  final FilterModel filterRoute;
  @override
  @JsonKey()
  final FilterModel filterTrips;
  final List<RouteModel> _routes;
  @override
  @JsonKey()
  List<RouteModel> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  final List<TripModel> _trips;
  @override
  @JsonKey()
  List<TripModel> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filterVehicle, filterVehicle) ||
                other.filterVehicle == filterVehicle) &&
            (identical(other.filterRoute, filterRoute) ||
                other.filterRoute == filterRoute) &&
            (identical(other.filterTrips, filterTrips) ||
                other.filterTrips == filterTrips) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      filterVehicle,
      filterRoute,
      filterTrips,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(_trips));

  @override
  String toString() {
    return 'VehicleState(status: $status, filterVehicle: $filterVehicle, filterRoute: $filterRoute, filterTrips: $filterTrips, routes: $routes, trips: $trips)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $VehicleStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Status status,
      FilterModel filterVehicle,
      FilterModel filterRoute,
      FilterModel filterTrips,
      List<RouteModel> routes,
      List<TripModel> trips});

  @override
  $FilterModelCopyWith<$Res> get filterVehicle;
  @override
  $FilterModelCopyWith<$Res> get filterRoute;
  @override
  $FilterModelCopyWith<$Res> get filterTrips;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? filterVehicle = null,
    Object? filterRoute = null,
    Object? filterTrips = null,
    Object? routes = null,
    Object? trips = null,
  }) {
    return _then(_Initial(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      filterVehicle: null == filterVehicle
          ? _self.filterVehicle
          : filterVehicle // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      filterRoute: null == filterRoute
          ? _self.filterRoute
          : filterRoute // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      filterTrips: null == filterTrips
          ? _self.filterTrips
          : filterTrips // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      routes: null == routes
          ? _self._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      trips: null == trips
          ? _self._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripModel>,
    ));
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filterVehicle {
    return $FilterModelCopyWith<$Res>(_self.filterVehicle, (value) {
      return _then(_self.copyWith(filterVehicle: value));
    });
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filterRoute {
    return $FilterModelCopyWith<$Res>(_self.filterRoute, (value) {
      return _then(_self.copyWith(filterRoute: value));
    });
  }

  /// Create a copy of VehicleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filterTrips {
    return $FilterModelCopyWith<$Res>(_self.filterTrips, (value) {
      return _then(_self.copyWith(filterTrips: value));
    });
  }
}

// dart format on
