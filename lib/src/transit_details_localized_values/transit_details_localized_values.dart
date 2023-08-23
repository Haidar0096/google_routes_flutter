import 'package:google_routes_flutter/src/localized_time/localized_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transit_details_localized_values.g.dart';

/// Localized descriptions of values for RouteTransitDetails.
@JsonSerializable()
class TransitDetailsLocalizedValues {
  /// Time in its formatted text representation with a corresponding time zone.
  final LocalizedTime? arrivalTime;

  /// Time in its formatted text representation with a corresponding time zone.
  final LocalizedTime? departureTime;

  TransitDetailsLocalizedValues({
    this.arrivalTime,
    this.departureTime,
  });

  factory TransitDetailsLocalizedValues.fromJson(Map<String, dynamic> json) =>
      _$TransitDetailsLocalizedValuesFromJson(json);

  Map<String, dynamic> toJson() => _$TransitDetailsLocalizedValuesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitDetailsLocalizedValues &&
          runtimeType == other.runtimeType &&
          arrivalTime == other.arrivalTime &&
          departureTime == other.departureTime;

  @override
  int get hashCode => arrivalTime.hashCode ^ departureTime.hashCode;

  @override
  String toString() =>
      'TransitDetailsLocalizedValues{arrivalTime: $arrivalTime, departureTime: $departureTime}';
}
