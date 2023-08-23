import 'package:google_routes_flutter/src/location/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'waypoint.g.dart';

/// Encapsulates a waypoint. Waypoints mark both the beginning and end of a
/// route, and include intermediate stops along the route.
@JsonSerializable()
class Waypoint {
  /// Marks this waypoint as a milestone rather a stopping point. For each
  /// non-via waypoint in the request, the response appends an entry to the legs
  /// array to provide the details for stopovers on that leg of the trip. Set
  /// this value to true when you want the route to pass through this waypoint
  /// without stopping over. Via waypoints don't cause an entry to be added to
  /// the legs array, but they do route the journey through the waypoint. You
  /// can only set this value on waypoints that are intermediates. The request
  /// fails if you set this field on terminal waypoints. If
  /// ComputeRoutesRequest.optimize_waypoint_order is set to true then this
  /// field cannot be set to true; otherwise, the request fails.
  final bool? via;

  /// Indicates that the waypoint is meant for vehicles to stop at, where the
  /// intention is to either pickup or drop-off. When you set this value, the
  /// calculated route won't include non-via waypoints on roads that are
  /// unsuitable for pickup and drop-off. This option works only for DRIVE and
  /// TWO_WHEELER travel modes, and when the locationType is Location.
  final bool? vehicleStopover;

  /// Indicates that the location of this waypoint is meant to have a preference
  /// for the vehicle to stop at a particular side of road. When you set this
  /// value, the route will pass through the location so that the vehicle can
  /// stop at the side of road that the location is biased towards from the
  /// center of the road. This option works only for 'DRIVE' and 'TWO_WHEELER'
  /// RouteTravelMode.
  final bool? sideOfRoad;

  /// A point specified using geographic coordinates, including an optional
  /// heading.
  final Location? location;

  /// The POI Place ID associated with the waypoint.
  final String? placeId;

  /// Human readable address or a plus code. See https://plus.codes for details.
  final String? address;

  const Waypoint({
    this.via,
    this.vehicleStopover,
    this.sideOfRoad,
    this.location,
    this.placeId,
    this.address,
  });

  factory Waypoint.fromJson(Map<String, dynamic> json) =>
      _$WaypointFromJson(json);

  Map<String, dynamic> toJson() => _$WaypointToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Waypoint &&
          runtimeType == other.runtimeType &&
          via == other.via &&
          vehicleStopover == other.vehicleStopover &&
          sideOfRoad == other.sideOfRoad &&
          location == other.location &&
          placeId == other.placeId &&
          address == other.address;

  @override
  int get hashCode =>
      via.hashCode ^
      vehicleStopover.hashCode ^
      sideOfRoad.hashCode ^
      location.hashCode ^
      placeId.hashCode ^
      address.hashCode;

  @override
  String toString() =>
      'Waypoint{via: $via, vehicleStopover: $vehicleStopover, sideOfRoad: $sideOfRoad, location: $location, placeId: $placeId, address: $address}';
}
