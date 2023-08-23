import 'package:json_annotation/json_annotation.dart';

part 'routing_preference.g.dart';

/// A set of values that specify factors to take into consideration when calculating the route.
@JsonEnum(alwaysCreate: true)
enum RoutingPreference {
  /// No routing preference specified. Default to TRAFFIC_UNAWARE.
  @JsonValue('ROUTING_PREFERENCE_UNSPECIFIED')
  routingPreferenceUnspecified,

  /// Computes routes without taking live traffic conditions into consideration.
  /// Suitable when traffic conditions don't matter or are not applicable.
  /// Using this value produces the lowest latency. Note: For RouteTravelMode
  /// DRIVE and TWO_WHEELER choice of route and duration are based on road
  /// network and average time-independent traffic conditions. Results for a
  /// given request may vary over time due to changes in the road network,
  /// updated average traffic conditions, and the distributed nature of the
  /// service. Results may also vary between nearly-equivalent routes at any
  /// time or frequency.
  @JsonValue('TRAFFIC_UNAWARE')
  trafficUnaware,

  /// Calculates routes taking live traffic conditions into consideration. In
  /// contrast to TRAFFIC_AWARE_OPTIMAL, some optimizations are applied to
  /// significantly reduce latency.
  @JsonValue('TRAFFIC_AWARE')
  trafficAware,

  /// Calculates the routes taking live traffic conditions into consideration,
  /// without applying most performance optimizations. Using this value produces
  /// the highest latency.
  @JsonValue('TRAFFIC_AWARE_OPTIMAL')
  trafficAwareOptimal;

  String? toJson() => _$RoutingPreferenceEnumMap[this];
}
