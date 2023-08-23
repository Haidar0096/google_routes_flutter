import 'package:google_routes_flutter/src/transit_details_localized_values/transit_details_localized_values.dart';
import 'package:google_routes_flutter/src/transit_line/transit_line.dart';
import 'package:google_routes_flutter/src/transit_stop_details/transit_stop_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg_step_transit_details.g.dart';

/// Additional information for the RouteLegStep related to TRANSIT routes.
@JsonSerializable()
class RouteLegStepTransitDetails {
  /// Information about the arrival and departure stops for the step.
  final TransitStopDetails? stopDetails;

  /// Text representations of properties of the RouteLegStepTransitDetails.
  final TransitDetailsLocalizedValues? localizedValues;

  /// Specifies the direction in which to travel on this line as marked on the
  /// vehicle or at the departure stop. The direction is often the terminus
  /// station.
  final String? headsign;

  /// Specifies the expected time as a duration between departures from the same
  /// stop at this time. For example, with a headway seconds value of 600, you
  /// would expect a ten minute wait if you should miss your bus.
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "3.5s".
  final String? headway;

  /// Information about the transit line used in this step.
  final TransitLine? transitLine;

  /// The number of stops from the departure to the arrival stop. This count
  /// includes the arrival stop, but excludes the departure stop. For example,
  /// if your route leaves from Stop A, passes through stops B and C, and
  /// arrives at stop D, stopCount will return 3.
  final int? stopCount;

  /// The text that appears in schedules and sign boards to identify a transit
  /// trip to passengers. The text should uniquely identify a trip within a
  /// service day. For example, "538" is the tripShortText of the Amtrak train
  /// that leaves San Jose, CA at 15:10 on weekdays to Sacramento, CA.
  final String? tripShortText;

  RouteLegStepTransitDetails({
    this.stopDetails,
    this.localizedValues,
    this.headsign,
    this.headway,
    this.transitLine,
    this.stopCount,
    this.tripShortText,
  });

  factory RouteLegStepTransitDetails.fromJson(Map<String, dynamic> json) =>
      _$RouteLegStepTransitDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegStepTransitDetailsToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLegStepTransitDetails &&
          runtimeType == other.runtimeType &&
          stopDetails == other.stopDetails &&
          localizedValues == other.localizedValues &&
          headsign == other.headsign &&
          headway == other.headway &&
          transitLine == other.transitLine &&
          stopCount == other.stopCount &&
          tripShortText == other.tripShortText;

  @override
  int get hashCode =>
      stopDetails.hashCode ^
      localizedValues.hashCode ^
      headsign.hashCode ^
      headway.hashCode ^
      transitLine.hashCode ^
      stopCount.hashCode ^
      tripShortText.hashCode;

  @override
  String toString() =>
      'RouteLegStepTransitDetails{stopDetails: $stopDetails, localizedValues: $localizedValues, headsign: $headsign, headway: $headway, transitLine: $transitLine, stopCount: $stopCount, tripShortText: $tripShortText}';
}
