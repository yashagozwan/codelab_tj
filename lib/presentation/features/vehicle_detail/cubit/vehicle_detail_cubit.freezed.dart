// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VehicleDetailState {
  Status get status;
  VehicleDetailModel get vehicle;

  /// Create a copy of VehicleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VehicleDetailStateCopyWith<VehicleDetailState> get copyWith =>
      _$VehicleDetailStateCopyWithImpl<VehicleDetailState>(
          this as VehicleDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VehicleDetailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, vehicle);

  @override
  String toString() {
    return 'VehicleDetailState(status: $status, vehicle: $vehicle)';
  }
}

/// @nodoc
abstract mixin class $VehicleDetailStateCopyWith<$Res> {
  factory $VehicleDetailStateCopyWith(
          VehicleDetailState value, $Res Function(VehicleDetailState) _then) =
      _$VehicleDetailStateCopyWithImpl;
  @useResult
  $Res call({Status status, VehicleDetailModel vehicle});
}

/// @nodoc
class _$VehicleDetailStateCopyWithImpl<$Res>
    implements $VehicleDetailStateCopyWith<$Res> {
  _$VehicleDetailStateCopyWithImpl(this._self, this._then);

  final VehicleDetailState _self;
  final $Res Function(VehicleDetailState) _then;

  /// Create a copy of VehicleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? vehicle = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      vehicle: null == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleDetailModel,
    ));
  }
}

/// @nodoc

class _Initial implements VehicleDetailState {
  const _Initial(
      {this.status = Status.init, this.vehicle = const VehicleDetailModel()});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final VehicleDetailModel vehicle;

  /// Create a copy of VehicleDetailState
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
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, vehicle);

  @override
  String toString() {
    return 'VehicleDetailState(status: $status, vehicle: $vehicle)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $VehicleDetailStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call({Status status, VehicleDetailModel vehicle});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of VehicleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? vehicle = null,
  }) {
    return _then(_Initial(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      vehicle: null == vehicle
          ? _self.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleDetailModel,
    ));
  }
}

// dart format on
