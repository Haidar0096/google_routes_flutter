import 'package:google_routes_flutter/src/transit_stop/transit_stop.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transit_stop_details.g.dart';

/// Details about the transit stops for the RouteLegStep
@JsonSerializable()
class TransitStopDetails {
  /// Information about the arrival stop for the step.
  final TransitStop? arrivalStop;

  /// The estimated time of arrival for the step.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final String? arrivalTime;

  /// Information about the departure stop for the step.
  final TransitStop? departureStop;

  /// The estimated time of departure for the step.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final String? departureTime;

  TransitStopDetails({
    this.arrivalStop,
    this.arrivalTime,
    this.departureStop,
    this.departureTime,
  });

  factory TransitStopDetails.fromJson(Map<String, dynamic> json) =>
      _$TransitStopDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TransitStopDetailsToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitStopDetails &&
          runtimeType == other.runtimeType &&
          arrivalStop == other.arrivalStop &&
          arrivalTime == other.arrivalTime &&
          departureStop == other.departureStop &&
          departureTime == other.departureTime;

  @override
  int get hashCode =>
      arrivalStop.hashCode ^
      arrivalTime.hashCode ^
      departureStop.hashCode ^
      departureTime.hashCode;

  @override
  String toString() =>
      'TransitStopDetails{arrivalStop: $arrivalStop, arrivalTime: $arrivalTime, departureStop: $departureStop, departureTime: $departureTime}';
}
