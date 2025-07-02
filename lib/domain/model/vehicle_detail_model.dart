import 'package:json_annotation/json_annotation.dart';

part 'vehicle_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class VehicleDetailModel {
  VehicleDetailModel({
    required this.id,
    required this.type,
    required this.attributes,
    required this.links,
    required this.relationships,
  });

  factory VehicleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailModelFromJson(json);
  final String id;
  final String type;
  final VehicleAttributes attributes;
  final VehicleLinks links;
  final VehicleRelationships relationships;

  Map<String, dynamic> toJson() => _$VehicleDetailModelToJson(this);
}

@JsonSerializable()
class VehicleAttributes {
  VehicleAttributes({
    required this.bearing,
    required this.carriages,
    required this.currentStatus,
    required this.currentStopSequence,
    required this.directionId,
    required this.label,
    required this.latitude,
    required this.longitude,
    required this.revenue,
    required this.updatedAt,
    this.occupancyStatus,
    this.speed,
  });

  factory VehicleAttributes.fromJson(Map<String, dynamic> json) =>
      _$VehicleAttributesFromJson(json);
  final int bearing;
  final List<VehicleCarriage> carriages;
  @JsonKey(name: 'current_status')
  final String currentStatus;
  @JsonKey(name: 'current_stop_sequence')
  final int currentStopSequence;
  @JsonKey(name: 'direction_id')
  final int directionId;
  final String label;
  final double latitude;
  final double longitude;
  @JsonKey(name: 'occupancy_status')
  final String? occupancyStatus;
  final String revenue;
  final double? speed;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  Map<String, dynamic> toJson() => _$VehicleAttributesToJson(this);
}

@JsonSerializable()
class VehicleCarriage {
  VehicleCarriage({
    required this.label,
    required this.occupancyStatus,
    required this.occupancyPercentage,
  });

  factory VehicleCarriage.fromJson(Map<String, dynamic> json) =>
      _$VehicleCarriageFromJson(json);
  final String label;
  @JsonKey(name: 'occupancy_status')
  final String occupancyStatus;
  @JsonKey(name: 'occupancy_percentage')
  final int occupancyPercentage;

  Map<String, dynamic> toJson() => _$VehicleCarriageToJson(this);
}

@JsonSerializable()
class VehicleLinks {
  VehicleLinks({required this.self});

  factory VehicleLinks.fromJson(Map<String, dynamic> json) =>
      _$VehicleLinksFromJson(json);
  final String self;

  Map<String, dynamic> toJson() => _$VehicleLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VehicleRelationships {
  VehicleRelationships({
    required this.route,
    required this.stop,
    required this.trip,
  });

  factory VehicleRelationships.fromJson(Map<String, dynamic> json) =>
      _$VehicleRelationshipsFromJson(json);
  final RelationshipItem route;
  final RelationshipItem stop;
  final RelationshipItem trip;

  Map<String, dynamic> toJson() => _$VehicleRelationshipsToJson(this);
}

@JsonSerializable()
class RelationshipItem {
  RelationshipItem({required this.data});

  factory RelationshipItem.fromJson(Map<String, dynamic> json) =>
      _$RelationshipItemFromJson(json);
  final RelationshipData data;

  Map<String, dynamic> toJson() => _$RelationshipItemToJson(this);
}

@JsonSerializable()
class RelationshipData {
  RelationshipData({
    required this.id,
    required this.type,
  });

  factory RelationshipData.fromJson(Map<String, dynamic> json) =>
      _$RelationshipDataFromJson(json);
  final String id;
  final String type;

  Map<String, dynamic> toJson() => _$RelationshipDataToJson(this);
}
