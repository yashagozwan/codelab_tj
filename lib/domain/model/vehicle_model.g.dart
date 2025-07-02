// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) => VehicleModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : Relationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleModelToJson(VehicleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes?.toJson(),
      'links': instance.links?.toJson(),
      'relationships': instance.relationships?.toJson(),
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      bearing: (json['bearing'] as num?)?.toInt(),
      carriages: (json['carriages'] as List<dynamic>?)
          ?.map((e) => Carriage.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentStatus: json['current_status'] as String?,
      currentStopSequence: (json['current_stop_sequence'] as num?)?.toInt(),
      directionId: (json['direction_id'] as num?)?.toInt(),
      label: json['label'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      revenue: json['revenue'] as String?,
      updatedAt: json['updated_at'] as String?,
      occupancyStatus: json['occupancy_status'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'bearing': instance.bearing,
      'carriages': instance.carriages?.map((e) => e.toJson()).toList(),
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

Carriage _$CarriageFromJson(Map<String, dynamic> json) => Carriage(
      label: json['label'] as String?,
      occupancyPercentage: (json['occupancy_percentage'] as num?)?.toInt(),
      occupancyStatus: json['occupancy_status'] as String?,
    );

Map<String, dynamic> _$CarriageToJson(Carriage instance) => <String, dynamic>{
      'label': instance.label,
      'occupancy_percentage': instance.occupancyPercentage,
      'occupancy_status': instance.occupancyStatus,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      self: json['self'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
    };

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) =>
    Relationships(
      route: json['route'] == null
          ? null
          : RelationshipData.fromJson(json['route'] as Map<String, dynamic>),
      stop: json['stop'] == null
          ? null
          : RelationshipData.fromJson(json['stop'] as Map<String, dynamic>),
      trip: json['trip'] == null
          ? null
          : RelationshipData.fromJson(json['trip'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RelationshipsToJson(Relationships instance) =>
    <String, dynamic>{
      'route': instance.route?.toJson(),
      'stop': instance.stop?.toJson(),
      'trip': instance.trip?.toJson(),
    };

RelationshipData _$RelationshipDataFromJson(Map<String, dynamic> json) =>
    RelationshipData(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RelationshipDataToJson(RelationshipData instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
