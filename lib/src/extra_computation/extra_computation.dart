import 'package:json_annotation/json_annotation.dart';

part 'extra_computation.g.dart';

/// Extra computations to perform while completing the request.
@JsonEnum(alwaysCreate: true)
enum ExtraComputation {
  /// Not used. Requests containing this value will fail.
  @JsonValue('EXTRA_COMPUTATION_UNSPECIFIED')
  extraComputationUnspecified,

  /// Toll information for the route(s).
  @JsonValue('TOLLS')
  tolls,

  /// Estimated fuel consumption for the route(s).
  @JsonValue('FUEL_CONSUMPTION')
  fuelConsumption,

  /// Traffic aware polylines for the route(s).
  @JsonValue('TRAFFIC_ON_POLYLINE')
  trafficOnPolyline,

  /// Navigation Instructions presented as a formatted HTML text string.
  /// This content is meant to be read as-is. This content is for display only.
  /// Do not programmatically parse it.
  @JsonValue('HTML_FORMATTED_NAVIGATION_INSTRUCTIONS')
  htmlFormattedNavigationInstructions;

  String? toJson() => _$ExtraComputationEnumMap[this];
}
