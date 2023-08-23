import 'package:google_routes_flutter/src/route_modifiers/route_modifiers.dart';
import 'package:google_routes_flutter/src/waypoint/waypoint.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_matrix_origin.g.dart';

/// Represents a single origin for the `computeRouteMatrix` method.
@JsonSerializable()
class RouteMatrixOrigin {
  /// Required. Origin waypoint.
  final Waypoint? waypoint;

  /// Optional. Modifiers for every route that takes this as the origin
  final RouteModifiers? routeModifiers;

  const RouteMatrixOrigin({
    this.waypoint,
    this.routeModifiers,
  });

  factory RouteMatrixOrigin.fromJson(Map<String, dynamic> json) =>
      _$RouteMatrixOriginFromJson(json);

  Map<String, dynamic> toJson() => _$RouteMatrixOriginToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteMatrixOrigin &&
          runtimeType == other.runtimeType &&
          waypoint == other.waypoint &&
          routeModifiers == other.routeModifiers;

  @override
  int get hashCode => waypoint.hashCode ^ routeModifiers.hashCode;

  @override
  String toString() =>
      'RouteMatrixOrigin{waypoint: $waypoint, routeModifiers: $routeModifiers}';
}
