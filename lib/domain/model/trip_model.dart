import 'package:json_annotation/json_annotation.dart';

part 'trip_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TripModel {
  TripModel({
    this.id,
    this.type,
    this.attributes,
    this.links,
    this.relationships,
    this.isSelected,
  });

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);

  Map<String, dynamic> toJson() => _$TripModelToJson(this);

  final String? id;
  final String? type;
  final TripAttributes? attributes;
  final TripLinks? links;
  final TripRelationships? relationships;
  final bool? isSelected;
}

@JsonSerializable()
class TripAttributes {
  TripAttributes({
    this.bikesAllowed,
    this.blockId,
    this.directionId,
    this.headsign,
    this.name,
    this.revenue,
    this.wheelchairAccessible,
  });

  factory TripAttributes.fromJson(Map<String, dynamic> json) =>
      _$TripAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$TripAttributesToJson(this);

  @JsonKey(name: 'bikes_allowed')
  final int? bikesAllowed;

  @JsonKey(name: 'block_id')
  final String? blockId;

  @JsonKey(name: 'direction_id')
  final int? directionId;

  final String? headsign;
  final String? name;
  final String? revenue;

  @JsonKey(name: 'wheelchair_accessible')
  final int? wheelchairAccessible;
}

@JsonSerializable()
class TripLinks {
  TripLinks({this.self});

  factory TripLinks.fromJson(Map<String, dynamic> json) =>
      _$TripLinksFromJson(json);

  Map<String, dynamic> toJson() => _$TripLinksToJson(this);

  final String? self;
}

@JsonSerializable(explicitToJson: true)
class TripRelationships {
  TripRelationships({
    this.route,
    this.routePattern,
    this.service,
    this.shape,
  });

  factory TripRelationships.fromJson(Map<String, dynamic> json) =>
      _$TripRelationshipsFromJson(json);

  Map<String, dynamic> toJson() => _$TripRelationshipsToJson(this);

  final TripRelationshipDataWrapper? route;

  @JsonKey(name: 'route_pattern')
  final TripRelationshipDataWrapper? routePattern;

  final TripRelationshipDataWrapper? service;
  final TripRelationshipDataWrapper? shape;
}

@JsonSerializable()
class TripRelationshipDataWrapper {
  TripRelationshipDataWrapper({this.data});

  factory TripRelationshipDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$TripRelationshipDataWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$TripRelationshipDataWrapperToJson(this);

  final TripRelationshipData? data;
}

@JsonSerializable()
class TripRelationshipData {
  TripRelationshipData({this.id, this.type});

  factory TripRelationshipData.fromJson(Map<String, dynamic> json) =>
      _$TripRelationshipDataFromJson(json);

  Map<String, dynamic> toJson() => _$TripRelationshipDataToJson(this);

  final String? id;
  final String? type;
}
