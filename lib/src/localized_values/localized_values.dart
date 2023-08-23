import 'package:google_routes_flutter/src/localized_text/localized_text.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localized_values.g.dart';

/// Text representations of certain properties.
@JsonSerializable()
class LocalizedValues {
  /// Travel distance represented in text form.
  final LocalizedText? distance;

  /// Duration represented in text form taking traffic conditions into
  /// consideration. Note: If traffic information was not requested, this value
  /// is the same value as staticDuration.
  final LocalizedText? duration;

  /// Duration represented in text form without taking traffic conditions into
  /// consideration.
  final LocalizedText? staticDuration;

  /// Transit fare represented in text form.
  final LocalizedText? transitFare;

  const LocalizedValues({
    this.distance,
    this.duration,
    this.staticDuration,
    this.transitFare,
  });

  factory LocalizedValues.fromJson(Map<String, dynamic> json) =>
      _$LocalizedValuesFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizedValuesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalizedValues &&
          runtimeType == other.runtimeType &&
          distance == other.distance &&
          duration == other.duration &&
          staticDuration == other.staticDuration &&
          transitFare == other.transitFare;

  @override
  int get hashCode =>
      distance.hashCode ^
      duration.hashCode ^
      staticDuration.hashCode ^
      transitFare.hashCode;

  @override
  String toString() =>
      'LocalizedValues{distance: $distance, duration: $duration, staticDuration: $staticDuration, transitFare: $transitFare}';
}
