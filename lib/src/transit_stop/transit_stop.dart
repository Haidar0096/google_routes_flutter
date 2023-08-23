import 'package:google_routes_flutter/src/location/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transit_stop.g.dart';

/// Information about a transit stop.
@JsonSerializable()
class TransitStop {
  /// The name of the transit stop.
  final String? name;

  /// The location of the stop expressed in latitude/longitude coordinates.
  final Location? location;

  TransitStop({
    this.name,
    this.location,
  });

  factory TransitStop.fromJson(Map<String, dynamic> json) =>
      _$TransitStopFromJson(json);

  Map<String, dynamic> toJson() => _$TransitStopToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitStop &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          location == other.location;

  @override
  int get hashCode => name.hashCode ^ location.hashCode;

  @override
  String toString() => 'TransitStop{name: $name, location: $location}';
}
