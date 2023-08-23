import 'package:google_routes_flutter/src/localized_text/localized_text.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg_localized_values.g.dart';

/// Text representations of certain properties.
@JsonSerializable()
class RouteLegLocalizedValues {
  /// Travel distance represented in text form.
  final LocalizedText? distance;

  /// Duration taking traffic conditions into consideration represented in text
  /// form. Note: If you did not request traffic information, this value will
  /// be the same value as staticDuration.
  final LocalizedText? duration;

  /// Duration without taking traffic conditions into consideration, represented
  /// in text form.
  final LocalizedText? staticDuration;

  RouteLegLocalizedValues({
    this.distance,
    this.duration,
    this.staticDuration,
  });

  factory RouteLegLocalizedValues.fromJson(Map<String, dynamic> json) =>
      _$RouteLegLocalizedValuesFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegLocalizedValuesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLegLocalizedValues &&
          runtimeType == other.runtimeType &&
          distance == other.distance &&
          duration == other.duration &&
          staticDuration == other.staticDuration;

  @override
  int get hashCode =>
      distance.hashCode ^ duration.hashCode ^ staticDuration.hashCode;

  @override
  String toString() =>
      'RouteLegLocalizedValues{distance: $distance, duration: $duration, staticDuration: $staticDuration}';
}
