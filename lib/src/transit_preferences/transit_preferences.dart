import 'package:google_routes_flutter/src/transit_routing_preference/transit_routing_preference.dart';
import 'package:google_routes_flutter/src/transit_travel_mode/transit_travel_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transit_preferences.g.dart';

/// Preferences for TRANSIT based routes that influence the route that is
/// returned.
@JsonSerializable()
class TransitPreferences {
  /// A set of travel modes to use when getting a TRANSIT route. Defaults to all
  /// supported modes of travel.
  final List<TransitTravelMode>? allowedTravelModes;

  /// A routing preference that, when specified, influences the TRANSIT route
  /// returned.
  final TransitRoutingPreference? routingPreference;

  TransitPreferences({
    this.allowedTravelModes,
    this.routingPreference,
  });

  factory TransitPreferences.fromJson(Map<String, dynamic> json) =>
      _$TransitPreferencesFromJson(json);

  Map<String, dynamic> toJson() => _$TransitPreferencesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitPreferences &&
          runtimeType == other.runtimeType &&
          allowedTravelModes == other.allowedTravelModes &&
          routingPreference == other.routingPreference;

  @override
  int get hashCode => allowedTravelModes.hashCode ^ routingPreference.hashCode;

  @override
  String toString() =>
      'TransitPreferences{allowedTravelModes: $allowedTravelModes, transitRoutingPreference: $routingPreference}';
}
