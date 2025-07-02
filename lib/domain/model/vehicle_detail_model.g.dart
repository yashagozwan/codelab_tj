// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDetailModel _$VehicleDetailModelFromJson(Map<String, dynamic> json) =>
    VehicleDetailModel(
      id: json['id'] as String,
      type: json['type'] as String,
      attributes: VehicleAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      links: VehicleLinks.fromJson(json['links'] as Map<String, dynamic>),
      relationships: VehicleRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleDetailModelToJson(VehicleDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes.toJson(),
      'links': instance.links.toJson(),
      'relationships': instance.relationships.toJson(),
    };

VehicleAttributes _$VehicleAttributesFromJson(Map<String, dynamic> json) =>
    VehicleAttributes(
      bearing: (json['bearing'] as num).toInt(),
      carriages: (json['carriages'] as List<dynamic>)
          .map((e) => VehicleCarriage.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentStatus: json['current_status'] as String,
      currentStopSequence: (json['current_stop_sequence'] as num).toInt(),
      directionId: (json['direction_id'] as num).toInt(),
      label: json['label'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      revenue: json['revenue'] as String,
      updatedAt: json['updated_at'] as String,
      occupancyStatus: json['occupancy_status'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VehicleAttributesToJson(VehicleAttributes instance) =>
    <String, dynamic>{
      'bearing': instance.bearing,
      'carriages': instance.carriages.map((e) => e.toJson()).toList(),
      'current_status': instance.currentStatus,
      'current_stop_sequence': instance.currentStopSequence,
      'direction_id': instance.directionId,
      'label': instance.label,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'occupancy_status': instance.occupancyStatus,
      'revenue': instance.revenue,
      'speed': instance.speed,
      'updated_at': instance.updatedAt,
    };

VehicleCarriage _$VehicleCarriageFromJson(Map<String, dynamic> json) =>
    VehicleCarriage(
      label: json['label'] as String,
      occupancyStatus: json['occupancy_status'] as String,
      occupancyPercentage: (json['occupancy_percentage'] as num).toInt(),
    );

Map<String, dynamic> _$VehicleCarriageToJson(VehicleCarriage instance) =>
    <String, dynamic>{
      'label': instance.label,
      'occupancy_status': instance.occupancyStatus,
      'occupancy_percentage': instance.occupancyPercentage,
    };

VehicleLinks _$VehicleLinksFromJson(Map<String, dynamic> json) => VehicleLinks(
      self: json['self'] as String,
    );

Map<String, dynamic> _$VehicleLinksToJson(VehicleLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
    };

VehicleRelationships _$VehicleRelationshipsFromJson(
        Map<String, dynamic> json) =>
    VehicleRelationships(
      route: RelationshipItem.fromJson(json['route'] as Map<String, dynamic>),
      stop: RelationshipItem.fromJson(json['stop'] as Map<String, dynamic>),
      trip: RelationshipItem.fromJson(json['trip'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleRelationshipsToJson(
        VehicleRelationships instance) =>
    <String, dynamic>{
      'route': instance.route.toJson(),
      'stop': instance.stop.toJson(),
      'trip': instance.trip.toJson(),
    };

RelationshipItem _$RelationshipItemFromJson(Map<String, dynamic> json) =>
    RelationshipItem(
      data: RelationshipData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RelationshipItemToJson(RelationshipItem instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

RelationshipData _$RelationshipDataFromJson(Map<String, dynamic> json) =>
    RelationshipData(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RelationshipDataToJson(RelationshipData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
