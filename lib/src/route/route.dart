import 'package:google_routes_flutter/src/polyline/polyline.dart';
import 'package:google_routes_flutter/src/route_label/route_label.dart';
import 'package:google_routes_flutter/src/route_leg/route_leg.dart';
import 'package:google_routes_flutter/src/route_localized_values/route_localized_values.dart';
import 'package:google_routes_flutter/src/route_travel_advisory/route_travel_advisory.dart';
import 'package:google_routes_flutter/src/viewport/viewport.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route.g.dart';

/// Contains a route, which consists of a series of connected road segments
/// that join beginning, ending, and intermediate waypoints.
@JsonSerializable()
class Route {
  /// Labels for the Route that are useful to identify specific properties of
  /// the route to compare against others.
  final List<RouteLabel>? routeLabels;

  /// A collection of legs (path segments between waypoints) that make up the
  /// route. Each leg corresponds to the trip between two non-via Waypoints.
  /// For example, a route with no intermediate waypoints has only one leg. A
  /// route that includes one non-via intermediate waypoint has two legs. A
  /// route that includes one via intermediate waypoint has one leg. The order
  /// of the legs matches the order of waypoints from origin to intermediates
  /// to destination.
  final List<RouteLeg>? legs;

  /// The travel distance of the route, in meters.
  final int? distanceMeters;

  /// The length of time needed to navigate the route. If you set the
  /// routingPreference to TRAFFIC_UNAWARE, then this value is the same as
  /// staticDuration. If you set the routingPreference to either TRAFFIC_AWARE
  /// or TRAFFIC_AWARE_OPTIMAL, then this value is calculated taking traffic
  /// conditions into account.
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "3.5s".
  final String? duration;

  /// The duration of travel through the route without taking traffic conditions
  /// into consideration.
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "3.5s".
  final String? staticDuration;

  /// The overall route polyline. This polyline is the combined polyline of all
  /// legs.
  final Polyline? polyline;

  /// A description of the route.
  final String? description;

  /// An array of warnings to show when displaying the route.
  final List<String>? warnings;

  /// The viewport bounding box of the polyline.
  final Viewport? viewport;

  /// Additional information about the route.
  final RouteTravelAdvisory? travelAdvisory;

  /// If you set optimizeWaypointOrder to true, this field contains the
  /// optimized ordering of intermediate waypoints. Otherwise, this field is
  /// empty. For example, if you give an input of Origin: LA; Intermediate
  /// waypoints: Dallas, Bangor, Phoenix; Destination: New York; and the
  /// optimized intermediate waypoint order is Phoenix, Dallas, Bangor, then
  /// this field contains the values [2, 0, 1]. The index starts with 0 for
  /// the first intermediate waypoint provided in the input.
  final List<int>? optimizedIntermediateWaypointIndex;

  /// Text representations of properties of the Route.
  final RouteLocalizedValues? localizedValues;

  /// A web-safe, base64-encoded route token that can be passed to the
  /// Navigation SDK, that allows the Navigation SDK to reconstruct the route
  /// during navigation, and, in the event of rerouting, honor the original
  /// intention when you created the route by calling v2.computeRoutes.
  /// Customers should treat this token as an opaque blob. It is not meant for
  /// reading or mutating. NOTE: Route.route_token is only available for
  /// requests that have set ComputeRoutesRequest.routing_preference to
  /// TRAFFIC_AWARE or TRAFFIC_AWARE_OPTIMAL. Route.route_token is not
  /// supported for requests that have Via waypoints.
  final String? routeToken;

  Route({
    this.routeLabels,
    this.legs,
    this.distanceMeters,
    this.duration,
    this.staticDuration,
    this.polyline,
    this.description,
    this.warnings,
    this.viewport,
    this.travelAdvisory,
    this.optimizedIntermediateWaypointIndex,
    this.localizedValues,
    this.routeToken,
  });

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  Map<String, dynamic> toJson() => _$RouteToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Route &&
          runtimeType == other.runtimeType &&
          routeLabels == other.routeLabels &&
          legs == other.legs &&
          distanceMeters == other.distanceMeters &&
          duration == other.duration &&
          staticDuration == other.staticDuration &&
          polyline == other.polyline &&
          description == other.description &&
          warnings == other.warnings &&
          viewport == other.viewport &&
          travelAdvisory == other.travelAdvisory &&
          optimizedIntermediateWaypointIndex ==
              other.optimizedIntermediateWaypointIndex &&
          localizedValues == other.localizedValues &&
          routeToken == other.routeToken;

  @override
  int get hashCode =>
      routeLabels.hashCode ^
      legs.hashCode ^
      distanceMeters.hashCode ^
      duration.hashCode ^
      staticDuration.hashCode ^
      polyline.hashCode ^
      description.hashCode ^
      warnings.hashCode ^
      viewport.hashCode ^
      travelAdvisory.hashCode ^
      optimizedIntermediateWaypointIndex.hashCode ^
      localizedValues.hashCode ^
      routeToken.hashCode;

  @override
  String toString() =>
      'Route{routeLabels: $routeLabels, legs: $legs, distanceMeters: $distanceMeters, duration: $duration, staticDuration: $staticDuration, polyline: $polyline, description: $description, warnings: $warnings, viewport: $viewport, travelAdvisory: $travelAdvisory, optimizedIntermediateWaypointIndex: $optimizedIntermediateWaypointIndex, localizedValues: $localizedValues, routeToken: $routeToken}';
}
