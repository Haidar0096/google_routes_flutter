import 'package:google_routes_flutter/src/localized_text/localized_text.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg_step_localized_values.g.dart';

/// Text representations of properties of the RouteLeg.
@JsonSerializable()
class RouteLegStepLocalizedValues {
  /// Travel distance represented in text form.
  final LocalizedText? distance;

  /// Duration without taking traffic conditions into consideration, represented
  /// in text form.
  final LocalizedText? staticDuration;

  RouteLegStepLocalizedValues({
    this.distance,
    this.staticDuration,
  });

  factory RouteLegStepLocalizedValues.fromJson(Map<String, dynamic> json) =>
      _$RouteLegStepLocalizedValuesFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegStepLocalizedValuesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLegStepLocalizedValues &&
          runtimeType == other.runtimeType &&
          distance == other.distance &&
          staticDuration == other.staticDuration;

  @override
  int get hashCode => distance.hashCode ^ staticDuration.hashCode;

  @override
  String toString() =>
      'RouteLegStepLocalizedValues{distance: $distance, staticDuration: $staticDuration}';
}
