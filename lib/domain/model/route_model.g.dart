// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) => RouteModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : RouteAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$RouteModelToJson(RouteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes?.toJson(),
      'isSelected': instance.isSelected,
    };

RouteAttributes _$RouteAttributesFromJson(Map<String, dynamic> json) =>
    RouteAttributes(
      color: json['color'] as String?,
      description: json['description'] as String?,
      directionDestinations: (json['direction_destinations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      directionNames: (json['direction_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fareClass: json['fare_class'] as String?,
      longName: json['long_name'] as String?,
      shortName: json['short_name'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt(),
      textColor: json['text_color'] as String?,
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RouteAttributesToJson(RouteAttributes instance) =>
    <String, dynamic>{
      'color': instance.color,
      'description': instance.description,
      'direction_destinations': instance.directionDestinations,
      'direction_names': instance.directionNames,
      'fare_class': instance.fareClass,
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'sort_order': instance.sortOrder,
      'text_color': instance.textColor,
      'type': instance.type,
    };
