import 'package:google_routes_flutter/src/geocoded_waypoint/geocoded_waypoint.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geocoding_results.g.dart';

/// Contains GeocodedWaypoints for origin, destination and intermediate
/// waypoints. Only populated for address waypoints.
@JsonSerializable()
class GeocodingResults {
  /// Origin geocoded waypoint.
  final GeocodedWaypoint? origin;

  /// Destination geocoded waypoint.
  final GeocodedWaypoint? destination;

  /// A list of intermediate geocoded waypoints each containing an index field
  /// that corresponds to the zero-based position of the waypoint in the order
  /// they were specified in the request.
  final List<GeocodedWaypoint>? intermediates;

  GeocodingResults({
    this.origin,
    this.destination,
    this.intermediates,
  });

  factory GeocodingResults.fromJson(Map<String, dynamic> json) =>
      _$GeocodingResultsFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodingResultsToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeocodingResults &&
          runtimeType == other.runtimeType &&
          origin == other.origin &&
          destination == other.destination &&
          intermediates == other.intermediates;

  @override
  int get hashCode =>
      origin.hashCode ^ destination.hashCode ^ intermediates.hashCode;

  @override
  String toString() =>
      'GeocodingResults{origin: $origin, destination: $destination, intermediates: $intermediates}';
}
