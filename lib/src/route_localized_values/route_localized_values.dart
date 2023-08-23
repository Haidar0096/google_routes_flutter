import 'package:google_routes_flutter/src/localized_text/localized_text.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_localized_values.g.dart';

/// Text representations of certain properties.
@JsonSerializable()
class RouteLocalizedValues {
  /// Travel distance represented in text form.
  final LocalizedText? distance;

  /// Duration taking traffic conditions into consideration, represented in text
  /// form. Note: If you did not request traffic information, this value will be
  /// the same value as staticDuration.
  final LocalizedText? duration;

  /// Duration without taking traffic conditions into consideration, represented
  /// in text form.
  final LocalizedText? staticDuration;

  /// Transit fare represented in text form.
  final LocalizedText? transitFare;

  RouteLocalizedValues({
    this.distance,
    this.duration,
    this.staticDuration,
    this.transitFare,
  });

  factory RouteLocalizedValues.fromJson(Map<String, dynamic> json) =>
      _$RouteLocalizedValuesFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLocalizedValuesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLocalizedValues &&
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
      'RouteLocalizedValues{distance: $distance, duration: $duration, staticDuration: $staticDuration, transitFare: $transitFare}';
}
