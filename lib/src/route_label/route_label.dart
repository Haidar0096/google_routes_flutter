import 'package:json_annotation/json_annotation.dart';

part 'route_label.g.dart';

/// Labels for the Route that are useful to identify specific properties of the
/// route to compare against others.
@JsonEnum(alwaysCreate: true)
enum RouteLabel {
  /// Default - not used.
  @JsonValue('ROUTE_LABEL_UNSPECIFIED')
  routeLabelUnspecified,

  /// The default "best" route returned for the route computation.
  @JsonValue('DEFAULT_ROUTE')
  defaultRoute,

  /// An alternative to the default "best" route. Routes like this will be
  /// returned when computeAlternativeRoutes is specified.
  @JsonValue('DEFAULT_ROUTE_ALTERNATE')
  defaultRouteAlternate,

  /// Fuel efficient route. Routes labeled with this value are determined to be
  /// optimized for Eco parameters such as fuel consumption.
  @JsonValue('FUEL_EFFICIENT')
  fuelEfficient;

  String? toJson() => _$RouteLabelEnumMap[this];
}
