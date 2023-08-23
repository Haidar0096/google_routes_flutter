import 'package:json_annotation/json_annotation.dart';

part 'transit_routing_preference.g.dart';

/// Specifies routing preferences for transit routes.
@JsonEnum(alwaysCreate: true)
enum TransitRoutingPreference {
  /// No preference specified.
  @JsonValue('TRANSIT_ROUTING_PREFERENCE_UNSPECIFIED')
  transitRoutingPreferenceUnspecified,

  /// Indicates that the calculated route should prefer limited amounts of
  /// walking.
  @JsonValue('LESS_WALKING')
  lessWalking,

  /// Indicates that the calculated route should prefer a limited number of
  /// transfers.
  @JsonValue('FEWER_TRANSFERS')
  fewerTransfers,
}
