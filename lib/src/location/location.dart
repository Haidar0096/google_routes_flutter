import 'package:google_routes_flutter/src/latlng/latlng.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

/// Encapsulates a location (a geographic point, and an optional heading).
@JsonSerializable()
class Location {
  /// The waypoint's geographic coordinates.
  final LatLng? latLng;

  /// The compass heading associated with the direction of the flow of traffic.
  /// This value specifies the side of the road for pickup and drop-off. Heading
  /// values can be from 0 to 360, where 0 specifies a heading of due North, 90
  /// specifies a heading of due East, and so on. You can use this field only
  /// for DRIVE and TWO_WHEELER RouteTravelMode.
  final int? heading;

  const Location({
    this.latLng,
    this.heading,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Location &&
          runtimeType == other.runtimeType &&
          latLng == other.latLng &&
          heading == other.heading;

  @override
  int get hashCode => latLng.hashCode ^ heading.hashCode;

  @override
  String toString() => 'Location{latLng: $latLng, heading: $heading}';
}
