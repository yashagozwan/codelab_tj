import 'package:json_annotation/json_annotation.dart';

part 'vehicle_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class VehicleDetailModel {
  const VehicleDetailModel({
    this.id,
    this.type,
    this.attributes,
    this.links,
    this.relationships,
  });

  factory VehicleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailModelFromJson(json);

  final String? id;
  final String? type;
  final VehicleAttributes? attributes;
  final VehicleLinks? links;
  final VehicleRelationships? relationships;

  Map<String, dynamic> toJson() => _$VehicleDetailModelToJson(this);
}

@JsonSerializable()
class VehicleAttributes {
  const VehicleAttributes({
    this.bearing,
    this.carriages,
    this.currentStatus,
    this.currentStopSequence,
    this.directionId,
    this.label,
    this.latitude,
    this.longitude,
    this.revenue,
    this.updatedAt,
    this.occupancyStatus,
    this.speed,
  });

  factory VehicleAttributes.fromJson(Map<String, dynamic> json) =>
      _$VehicleAttributesFromJson(json);

  final int? bearing;
  final List<VehicleCarriage>? carriages;
  @JsonKey(name: 'current_status')
  final String? currentStatus;
  @JsonKey(name: 'current_stop_sequence')
  final int? currentStopSequence;
  @JsonKey(name: 'direction_id')
  final int? directionId;
  final String? label;
  final double? latitude;
  final double? longitude;
  @JsonKey(name: 'occupancy_status')
  final String? occupancyStatus;
  final String? revenue;
  final double? speed;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$VehicleAttributesToJson(this);
}

@JsonSerializable()
class VehicleCarriage {
  const VehicleCarriage({
    this.label,
    this.occupancyStatus,
    this.occupancyPercentage,
  });

  factory VehicleCarriage.fromJson(Map<String, dynamic> json) =>
      _$VehicleCarriageFromJson(json);

  final String? label;
  @JsonKey(name: 'occupancy_status')
  final String? occupancyStatus;
  @JsonKey(name: 'occupancy_percentage')
  final int? occupancyPercentage;

  Map<String, dynamic> toJson() => _$VehicleCarriageToJson(this);
}

@JsonSerializable()
class VehicleLinks {
  const VehicleLinks({this.self});

  factory VehicleLinks.fromJson(Map<String, dynamic> json) =>
      _$VehicleLinksFromJson(json);

  final String? self;

  Map<String, dynamic> toJson() => _$VehicleLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VehicleRelationships {
  const VehicleRelationships({
    this.route,
    this.stop,
    this.trip,
  });

  factory VehicleRelationships.fromJson(Map<String, dynamic> json) =>
      _$VehicleRelationshipsFromJson(json);

  final RelationshipItem? route;
  final RelationshipItem? stop;
  final RelationshipItem? trip;

  Map<String, dynamic> toJson() => _$VehicleRelationshipsToJson(this);
}

@JsonSerializable()
class RelationshipItem {
  const RelationshipItem({this.data});

  factory RelationshipItem.fromJson(Map<String, dynamic> json) =>
      _$RelationshipItemFromJson(json);

  final RelationshipData? data;

  Map<String, dynamic> toJson() => _$RelationshipItemToJson(this);
}

@JsonSerializable()
class RelationshipData {
  const RelationshipData({
    this.id,
    this.type,
  });

  factory RelationshipData.fromJson(Map<String, dynamic> json) =>
      _$RelationshipDataFromJson(json);

  final String? id;
  final String? type;

  Map<String, dynamic> toJson() => _$RelationshipDataToJson(this);
}
