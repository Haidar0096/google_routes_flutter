import 'package:json_annotation/json_annotation.dart';

part 'latlng.g.dart';

/// An object that represents a latitude/longitude pair. This is expressed as a
/// pair of doubles to represent degrees latitude and degrees longitude. Unless
/// specified otherwise, this object must conform to the WGS84 standard. Values
/// must be within normalized ranges.
@JsonSerializable()
class LatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  final double? latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  final double? longitude;

  const LatLng({
    this.latitude,
    this.longitude,
  });

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LatLng &&
          runtimeType == other.runtimeType &&
          latitude == other.latitude &&
          longitude == other.longitude;

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;

  @override
  String toString() => 'LatLng{latitude: $latitude, longitude: $longitude}';
}