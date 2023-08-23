import 'package:google_routes_flutter/src/location/location.dart';
import 'package:google_routes_flutter/src/polyline/polyline.dart';
import 'package:google_routes_flutter/src/route_leg_localized_values/route_leg_localized_values.dart';
import 'package:google_routes_flutter/src/route_leg_step/route_leg_step.dart';
import 'package:google_routes_flutter/src/route_leg_travel_advisory/route_leg_travel_advisory.dart';
import 'package:google_routes_flutter/src/steps_overview/steps_overview.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg.g.dart';

/// Contains a segment between non-via waypoints.
@JsonSerializable()
class RouteLeg {
  /// The travel distance of the route leg, in meters.
  final int? distanceMeters;

  /// The length of time needed to navigate the leg. If the route_preference is
  /// set to TRAFFIC_UNAWARE, then this value is the same as staticDuration. If
  /// the route_preference is either TRAFFIC_AWARE or TRAFFIC_AWARE_OPTIMAL,
  /// then this value is calculated taking traffic conditions into account.
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "3.5s".
  final String? duration;

  /// The duration of travel through the leg, calculated without taking traffic
  /// conditions into consideration.
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "3.5s".
  final String? staticDuration;

  /// The overall polyline for this leg that includes each step's polyline.
  final Polyline? polyline;

  /// The start location of this leg. This location might be different from the
  /// provided origin. For example, when the provided origin is not near a road,
  /// this is a point on the road.
  final Location? startLocation;

  /// The end location of this leg. This location might be different from the
  /// provided destination. For example, when the provided destination is not
  /// near a road, this is a point on the road.
  final Location? endLocation;

  /// An array of steps denoting segments within this leg. Each step represents
  /// one navigation instruction.
  final List<RouteLegStep>? steps;

  /// Contains the additional information that the user should be informed about,
  /// such as possible traffic zone restrictions, on a route leg.
  final RouteLegTravelAdvisory? travelAdvisory;

  /// Text representations of properties of the RouteLeg.
  final RouteLegLocalizedValues? localizedValues;

  /// Overview information about the steps in this RouteLeg. This field is only
  /// populated for TRANSIT routes.
  final StepsOverview? stepsOverview;

  RouteLeg({
    this.distanceMeters,
    this.duration,
    this.staticDuration,
    this.polyline,
    this.startLocation,
    this.endLocation,
    this.steps,
    this.travelAdvisory,
    this.localizedValues,
    this.stepsOverview,
  });

  factory RouteLeg.fromJson(Map<String, dynamic> json) =>
      _$RouteLegFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLeg &&
          runtimeType == other.runtimeType &&
          distanceMeters == other.distanceMeters &&
          duration == other.duration &&
          staticDuration == other.staticDuration &&
          polyline == other.polyline &&
          startLocation == other.startLocation &&
          endLocation == other.endLocation &&
          steps == other.steps &&
          travelAdvisory == other.travelAdvisory &&
          localizedValues == other.localizedValues &&
          stepsOverview == other.stepsOverview;

  @override
  int get hashCode =>
      distanceMeters.hashCode ^
      duration.hashCode ^
      staticDuration.hashCode ^
      polyline.hashCode ^
      startLocation.hashCode ^
      endLocation.hashCode ^
      steps.hashCode ^
      travelAdvisory.hashCode ^
      localizedValues.hashCode ^
      stepsOverview.hashCode;

  @override
  String toString() =>
      'RouteLeg{distanceMeters: $distanceMeters, duration: $duration, staticDuration: $staticDuration, polyline: $polyline, startLocation: $startLocation, endLocation: $endLocation, steps: $steps, travelAdvisory: $travelAdvisory, localizedValues: $localizedValues, stepsOverview: $stepsOverview}';
}
