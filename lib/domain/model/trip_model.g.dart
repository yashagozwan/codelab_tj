// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripModel _$TripModelFromJson(Map<String, dynamic> json) => TripModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : TripAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : TripLinks.fromJson(json['links'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : TripRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$TripModelToJson(TripModel instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes?.toJson(),
      'links': instance.links?.toJson(),
      'relationships': instance.relationships?.toJson(),
      'isSelected': instance.isSelected,
    };

TripAttributes _$TripAttributesFromJson(Map<String, dynamic> json) =>
    TripAttributes(
      bikesAllowed: (json['bikes_allowed'] as num?)?.toInt(),
      blockId: json['block_id'] as String?,
      directionId: (json['direction_id'] as num?)?.toInt(),
      headsign: json['headsign'] as String?,
      name: json['name'] as String?,
      revenue: json['revenue'] as String?,
      wheelchairAccessible: (json['wheelchair_accessible'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TripAttributesToJson(TripAttributes instance) =>
    <String, dynamic>{
      'bikes_allowed': instance.bikesAllowed,
      'block_id': instance.blockId,
      'direction_id': instance.directionId,
      'headsign': instance.headsign,
      'name': instance.name,
      'revenue': instance.revenue,
      'wheelchair_accessible': instance.wheelchairAccessible,
    };

TripLinks _$TripLinksFromJson(Map<String, dynamic> json) => TripLinks(
      self: json['self'] as String?,
    );

Map<String, dynamic> _$TripLinksToJson(TripLinks instance) => <String, dynamic>{
      'self': instance.self,
    };

TripRelationships _$TripRelationshipsFromJson(Map<String, dynamic> json) =>
    TripRelationships(
      route: json['route'] == null
          ? null
          : TripRelationshipDataWrapper.fromJson(
              json['route'] as Map<String, dynamic>),
      routePattern: json['route_pattern'] == null
          ? null
          : TripRelationshipDataWrapper.fromJson(
              json['route_pattern'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : TripRelationshipDataWrapper.fromJson(
              json['service'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : TripRelationshipDataWrapper.fromJson(
              json['shape'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TripRelationshipsToJson(TripRelationships instance) =>
    <String, dynamic>{
      'route': instance.route?.toJson(),
      'route_pattern': instance.routePattern?.toJson(),
      'service': instance.service?.toJson(),
      'shape': instance.shape?.toJson(),
    };

TripRelationshipDataWrapper _$TripRelationshipDataWrapperFromJson(
        Map<String, dynamic> json) =>
    TripRelationshipDataWrapper(
      data: json['data'] == null
          ? null
          : TripRelationshipData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TripRelationshipDataWrapperToJson(
        TripRelationshipDataWrapper instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

TripRelationshipData _$TripRelationshipDataFromJson(
        Map<String, dynamic> json) =>
    TripRelationshipData(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TripRelationshipDataToJson(
        TripRelationshipData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
