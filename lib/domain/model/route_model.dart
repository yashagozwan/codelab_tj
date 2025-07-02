import 'package:json_annotation/json_annotation.dart';

part 'route_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RouteModel {
  RouteModel({
    this.id,
    this.type,
    this.attributes,
    this.isSelected,
  });

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);

  final String? id;
  final String? type;
  final RouteAttributes? attributes;
  final bool? isSelected;

  Map<String, dynamic> toJson() => _$RouteModelToJson(this);
}

@JsonSerializable()
class RouteAttributes {
  RouteAttributes({
    this.color,
    this.description,
    this.directionDestinations,
    this.directionNames,
    this.fareClass,
    this.longName,
    this.shortName,
    this.sortOrder,
    this.textColor,
    this.type,
  });

  factory RouteAttributes.fromJson(Map<String, dynamic> json) =>
      _$RouteAttributesFromJson(json);

  final String? color;
  final String? description;

  @JsonKey(name: 'direction_destinations')
  final List<String>? directionDestinations;

  @JsonKey(name: 'direction_names')
  final List<String>? directionNames;

  @JsonKey(name: 'fare_class')
  final String? fareClass;

  @JsonKey(name: 'long_name')
  final String? longName;

  @JsonKey(name: 'short_name')
  final String? shortName;

  @JsonKey(name: 'sort_order')
  final int? sortOrder;

  @JsonKey(name: 'text_color')
  final String? textColor;

  final int? type;

  Map<String, dynamic> toJson() => _$RouteAttributesToJson(this);
}
