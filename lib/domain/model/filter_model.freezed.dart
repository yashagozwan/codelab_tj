// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilterModel {
  int get offset;
  int get limit;
  String? get sort;
  String? get routeIds;
  String? get tripsIds;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<FilterModel> get copyWith =>
      _$FilterModelCopyWithImpl<FilterModel>(this as FilterModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterModel &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.routeIds, routeIds) ||
                other.routeIds == routeIds) &&
            (identical(other.tripsIds, tripsIds) ||
                other.tripsIds == tripsIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, offset, limit, sort, routeIds, tripsIds);

  @override
  String toString() {
    return 'FilterModel(offset: $offset, limit: $limit, sort: $sort, routeIds: $routeIds, tripsIds: $tripsIds)';
  }
}

/// @nodoc
abstract mixin class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) _then) =
      _$FilterModelCopyWithImpl;
  @useResult
  $Res call(
      {int offset,
      int limit,
      String? sort,
      String? routeIds,
      String? tripsIds});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res> implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._self, this._then);

  final FilterModel _self;
  final $Res Function(FilterModel) _then;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? sort = freezed,
    Object? routeIds = freezed,
    Object? tripsIds = freezed,
  }) {
    return _then(_self.copyWith(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      routeIds: freezed == routeIds
          ? _self.routeIds
          : routeIds // ignore: cast_nullable_to_non_nullable
              as String?,
      tripsIds: freezed == tripsIds
          ? _self.tripsIds
          : tripsIds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _FilterModel implements FilterModel {
  const _FilterModel(
      {this.offset = 0,
      this.limit = 10,
      this.sort,
      this.routeIds,
      this.tripsIds});

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;
  @override
  final String? sort;
  @override
  final String? routeIds;
  @override
  final String? tripsIds;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FilterModelCopyWith<_FilterModel> get copyWith =>
      __$FilterModelCopyWithImpl<_FilterModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterModel &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.routeIds, routeIds) ||
                other.routeIds == routeIds) &&
            (identical(other.tripsIds, tripsIds) ||
                other.tripsIds == tripsIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, offset, limit, sort, routeIds, tripsIds);

  @override
  String toString() {
    return 'FilterModel(offset: $offset, limit: $limit, sort: $sort, routeIds: $routeIds, tripsIds: $tripsIds)';
  }
}

/// @nodoc
abstract mixin class _$FilterModelCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$FilterModelCopyWith(
          _FilterModel value, $Res Function(_FilterModel) _then) =
      __$FilterModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int offset,
      int limit,
      String? sort,
      String? routeIds,
      String? tripsIds});
}

/// @nodoc
class __$FilterModelCopyWithImpl<$Res> implements _$FilterModelCopyWith<$Res> {
  __$FilterModelCopyWithImpl(this._self, this._then);

  final _FilterModel _self;
  final $Res Function(_FilterModel) _then;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? sort = freezed,
    Object? routeIds = freezed,
    Object? tripsIds = freezed,
  }) {
    return _then(_FilterModel(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      routeIds: freezed == routeIds
          ? _self.routeIds
          : routeIds // ignore: cast_nullable_to_non_nullable
              as String?,
      tripsIds: freezed == tripsIds
          ? _self.tripsIds
          : tripsIds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
