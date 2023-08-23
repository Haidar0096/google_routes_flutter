import 'package:google_routes_flutter/src/money/money.dart';
import 'package:google_routes_flutter/src/speed_reading_interval/speed_reading_interval.dart';
import 'package:google_routes_flutter/src/toll_info/toll_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_travel_advisory.g.dart';

/// Contains the additional information that the user should be informed about,
/// such as possible traffic zone restrictions.
@JsonSerializable()
class RouteTravelAdvisory {
  /// Contains information about tolls on the route. This field is only
  /// populated if tolls are expected on the route. If this field is set, but
  /// the estimatedPrice subfield is not populated, then the route contains
  /// tolls, but the estimated price is unknown. If this field is not set, then
  /// there are no tolls expected on the route.
  final TollInfo? tollInfo;

  /// Speed reading intervals detailing traffic density. Applicable in case of
  /// TRAFFIC_AWARE and TRAFFIC_AWARE_OPTIMAL routing preferences. The intervals
  /// cover the entire polyline of the route without overlap. The start point of
  /// a specified interval is the same as the end point of the preceding
  /// interval.
  ///<br></br>
  ///<br></br> Example:
  ///<br></br>
  ///<br></br>
  ///<br></br> polyline: A ---- B ---- C ---- D ---- E ---- F ---- G
  ///<br></br> speedReadingIntervals: [A,C), [C,D), [D,G).
  final List<SpeedReadingInterval>? speedReadingIntervals;

  /// The predicted fuel consumption in microliters.
  final String? fuelConsumptionMicroliters;

  /// Returned route may have restrictions that are not suitable for requested
  /// travel mode or route modifiers.
  final bool? routeRestrictionsPartiallyIgnored;

  /// If present, contains the total fare or ticket costs on this route This
  /// property is only returned for TRANSIT requests and only for routes where
  /// fare information is available for all transit steps.
  final Money? transitFare;

  RouteTravelAdvisory({
    this.tollInfo,
    this.speedReadingIntervals,
    this.fuelConsumptionMicroliters,
    this.routeRestrictionsPartiallyIgnored,
    this.transitFare,
  });

  factory RouteTravelAdvisory.fromJson(Map<String, dynamic> json) =>
      _$RouteTravelAdvisoryFromJson(json);

  Map<String, dynamic> toJson() => _$RouteTravelAdvisoryToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteTravelAdvisory &&
          runtimeType == other.runtimeType &&
          tollInfo == other.tollInfo &&
          speedReadingIntervals == other.speedReadingIntervals &&
          fuelConsumptionMicroliters == other.fuelConsumptionMicroliters &&
          routeRestrictionsPartiallyIgnored ==
              other.routeRestrictionsPartiallyIgnored &&
          transitFare == other.transitFare;

  @override
  int get hashCode =>
      tollInfo.hashCode ^
      speedReadingIntervals.hashCode ^
      fuelConsumptionMicroliters.hashCode ^
      routeRestrictionsPartiallyIgnored.hashCode ^
      transitFare.hashCode;

  @override
  String toString() =>
      'RouteTravelAdvisory{tollInfo: $tollInfo, speedReadingIntervals: $speedReadingIntervals, fuelConsumptionMicroliters: $fuelConsumptionMicroliters, routeRestrictionsPartiallyIgnored: $routeRestrictionsPartiallyIgnored, transitFare: $transitFare}';
}
