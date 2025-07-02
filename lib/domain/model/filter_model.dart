import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.freezed.dart';

@freezed
abstract class FilterModel with _$FilterModel {
  const factory FilterModel({
    @Default(0) int offset,
    @Default(10) int limit,
    String? sort,
    String? routeIds,
    String? tripsIds,
  }) = _FilterModel;
}
