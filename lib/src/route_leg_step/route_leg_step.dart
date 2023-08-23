import 'package:google_routes_flutter/src/location/location.dart';
import 'package:google_routes_flutter/src/navigation_instruction/navigation_instruction.dart';
import 'package:google_routes_flutter/src/polyline/polyline.dart';
import 'package:google_routes_flutter/src/route_leg_step_localized_values/route_leg_step_localized_values.dart';
import 'package:google_routes_flutter/src/route_leg_step_transit_details/route_leg_step_transit_details.dart';
import 'package:google_routes_flutter/src/route_leg_step_travel_advisory/route_leg_step_travel_advisory.dart';
import 'package:google_routes_flutter/src/route_travel_mode/route_travel_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg_step.g.dart';

/// Contains a segment of a RouteLeg. A step corresponds to a single navigation
/// instruction. Route legs are made up of steps.
@JsonSerializable()
class RouteLegStep {
  final int? distanceMeters;
  final String? staticDuration;
  final Polyline? polyline;
  final Location? startLocation;
  final Location? endLocation;
  final NavigationInstruction? navigationInstruction;
  final RouteLegStepTravelAdvisory? travelAdvisory;
  final RouteLegStepLocalizedValues? localizedValues;
  final RouteLegStepTransitDetails? transitDetails;
  final RouteTravelMode? travelMode;

  RouteLegStep({
    this.distanceMeters,
    this.staticDuration,
    this.polyline,
    this.startLocation,
    this.endLocation,
    this.navigationInstruction,
    this.travelAdvisory,
    this.localizedValues,
    this.transitDetails,
    this.travelMode,
  });

  factory RouteLegStep.fromJson(Map<String, dynamic> json) =>
      _$RouteLegStepFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegStepToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLegStep &&
          runtimeType == other.runtimeType &&
          distanceMeters == other.distanceMeters &&
          staticDuration == other.staticDuration &&
          polyline == other.polyline &&
          startLocation == other.startLocation &&
          endLocation == other.endLocation &&
          navigationInstruction == other.navigationInstruction &&
          travelAdvisory == other.travelAdvisory &&
          localizedValues == other.localizedValues &&
          transitDetails == other.transitDetails &&
          travelMode == other.travelMode;

  @override
  int get hashCode =>
      distanceMeters.hashCode ^
      staticDuration.hashCode ^
      polyline.hashCode ^
      startLocation.hashCode ^
      endLocation.hashCode ^
      navigationInstruction.hashCode ^
      travelAdvisory.hashCode ^
      localizedValues.hashCode ^
      transitDetails.hashCode ^
      travelMode.hashCode;

  @override
  String toString() =>
      'RouteLegStep{distanceMeters: $distanceMeters, staticDuration: $staticDuration, polyline: $polyline, startLocation: $startLocation, endLocation: $endLocation, navigationInstruction: $navigationInstruction, travelAdvisory: $travelAdvisory, localizedValues: $localizedValues, transitDetails: $transitDetails, travelMode: $travelMode}';
}
