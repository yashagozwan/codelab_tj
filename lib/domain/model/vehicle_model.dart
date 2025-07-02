import 'package:json_annotation/json_annotation.dart';

part 'vehicle_model.g.dart';

@JsonSerializable(explicitToJson: true)
class VehicleModel {
  VehicleModel({
    this.id,
    this.type,
    this.attributes,
    this.links,
    this.relationships,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  final String? id;
  final String? type;
  final Attributes? attributes;
  final Links? links;
  final Relationships? relationships;

  Map<String, dynamic> toJson() => _$VehicleModelToJson(this);
}

@JsonSerializable()
class Attributes {
  Attributes({
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

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  final int? bearing;
  final List<Carriage>? carriages;
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

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class Carriage {
  Carriage({
    this.label,
    this.occupancyPercentage,
    this.occupancyStatus,
  });

  factory Carriage.fromJson(Map<String, dynamic> json) =>
      _$CarriageFromJson(json);

  final String? label;
  @JsonKey(name: 'occupancy_percentage')
  final int? occupancyPercentage;
  @JsonKey(name: 'occupancy_status')
  final String? occupancyStatus;

  Map<String, dynamic> toJson() => _$CarriageToJson(this);
}

@JsonSerializable()
class Links {
  Links({this.self});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  final String? self;

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Relationships {
  Relationships({
    this.route,
    this.stop,
    this.trip,
  });

  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);

  final RelationshipData? route;
  final RelationshipData? stop;
  final RelationshipData? trip;

  Map<String, dynamic> toJson() => _$RelationshipsToJson(this);
}

@JsonSerializable()
class RelationshipData {
  RelationshipData({this.data});

  factory RelationshipData.fromJson(Map<String, dynamic> json) =>
      _$RelationshipDataFromJson(json);

  final Data? data;

  Map<String, dynamic> toJson() => _$RelationshipDataToJson(this);
}

@JsonSerializable()
class Data {
  Data({
    this.id,
    this.type,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  final String? id;
  final String? type;

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
