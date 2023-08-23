import 'package:google_routes_flutter/src/status/status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geocoded_waypoint.g.dart';

/// Details about the locations used as waypoints. Only populated for address
/// waypoints. Includes details about the geocoding results for the purposes
/// of determining what the address was geocoded to.
@JsonSerializable()
class GeocodedWaypoint {
  /// Indicates the status code resulting from the geocoding operation.
  final Status? geocoderStatus;

  /// The type(s) of the result, in the form of zero or more type tags.
  /// Supported types:
  /// https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types
  final List<String>? type;

  /// Indicates that the geocoder did not return an exact match for the original
  /// request, though it was able to match part of the requested address.
  /// You may wish to examine the original request for misspellings and/or an
  /// incomplete address.
  final bool? partialMatch;

  /// The place ID for this result.
  final String? placeId;

  /// The index of the corresponding intermediate waypoint in the request.
  /// Only populated if the corresponding waypoint is an intermediate waypoint.
  final int? intermediateWaypointRequestIndex;

  GeocodedWaypoint({
    this.geocoderStatus,
    this.type,
    this.partialMatch,
    this.placeId,
    this.intermediateWaypointRequestIndex,
  });

  factory GeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$GeocodedWaypointFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodedWaypointToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeocodedWaypoint &&
          runtimeType == other.runtimeType &&
          geocoderStatus == other.geocoderStatus &&
          type == other.type &&
          partialMatch == other.partialMatch &&
          placeId == other.placeId &&
          intermediateWaypointRequestIndex ==
              other.intermediateWaypointRequestIndex;

  @override
  int get hashCode =>
      geocoderStatus.hashCode ^
      type.hashCode ^
      partialMatch.hashCode ^
      placeId.hashCode ^
      intermediateWaypointRequestIndex.hashCode;

  @override
  String toString() =>
      'GeocodedWaypoint{geocoderStatus: $geocoderStatus, type: $type, partialMatch: $partialMatch, placeId: $placeId, intermediateWaypointRequestIndex: $intermediateWaypointRequestIndex}';
}
