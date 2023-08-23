import 'package:json_annotation/json_annotation.dart';

part 'fallback_routing_mode.g.dart';

/// Actual routing mode used for returned fallback response.
@JsonEnum(alwaysCreate: true)
enum FallbackRoutingMode {
  /// Not used.
  @JsonValue('FALLBACK_ROUTING_MODE_UNSPECIFIED')
  fallbackRoutingModeUnspecified,

  /// Indicates the TRAFFIC_UNAWARE google.maps.routing.v2.RoutingPreference was used to compute the response.
  @JsonValue('FALLBACK_TRAFFIC_UNAWARE')
  fallbackTrafficUnaware,

  /// Indicates the TRAFFIC_AWARE RoutingPreference was used to compute the response.
  @JsonValue('FALLBACK_TRAFFIC_AWARE')
  fallbackTrafficAware
}
