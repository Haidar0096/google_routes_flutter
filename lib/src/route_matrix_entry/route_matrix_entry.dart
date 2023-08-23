import 'package:google_routes_flutter/src/fallback_info/fallback_info.dart';
import 'package:google_routes_flutter/src/localized_values/localized_values.dart';
import 'package:google_routes_flutter/src/route_matrix_element_condition/route_matrix_element_condition.dart';
import 'package:google_routes_flutter/src/route_travel_advisory/route_travel_advisory.dart';
import 'package:google_routes_flutter/src/status/status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_matrix_entry.g.dart';

/// Contains route information computed for an origin/destination pair in the
/// v2.computeRouteMatrix API.
/// If successful, the response body contains data with the following structure.
@JsonSerializable()
class RouteMatrixEntry {
  final Status? status;
  final RouteMatrixElementCondition? condition;
  final int? distanceMeters;
  final String? duration;
  final String? staticDuration;
  final RouteTravelAdvisory? travelAdvisory;
  final FallbackInfo? fallbackInfo;
  final LocalizedValues? localizedValues;
  final int? originIndex;
  final int? destinationIndex;

  const RouteMatrixEntry({
    this.status,
    this.condition,
    this.distanceMeters,
    this.duration,
    this.staticDuration,
    this.travelAdvisory,
    this.fallbackInfo,
    this.localizedValues,
    this.originIndex,
    this.destinationIndex,
  });

  factory RouteMatrixEntry.fromJson(Map<String, dynamic> json) =>
      _$RouteMatrixEntryFromJson(json);

  Map<String, dynamic> toJson() => _$RouteMatrixEntryToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteMatrixEntry &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          condition == other.condition &&
          distanceMeters == other.distanceMeters &&
          duration == other.duration &&
          staticDuration == other.staticDuration &&
          travelAdvisory == other.travelAdvisory &&
          fallbackInfo == other.fallbackInfo &&
          localizedValues == other.localizedValues &&
          originIndex == other.originIndex &&
          destinationIndex == other.destinationIndex;

  @override
  int get hashCode =>
      status.hashCode ^
      condition.hashCode ^
      distanceMeters.hashCode ^
      duration.hashCode ^
      staticDuration.hashCode ^
      travelAdvisory.hashCode ^
      fallbackInfo.hashCode ^
      localizedValues.hashCode ^
      originIndex.hashCode ^
      destinationIndex.hashCode;

  @override
  String toString() =>
      'RouteMatrixEntry{status: $status, condition: $condition, distanceMeters: $distanceMeters, duration: $duration, staticDuration: $staticDuration, travelAdvisory: $travelAdvisory, fallbackInfo: $fallbackInfo, localizedValues: $localizedValues, originIndex: $originIndex, destinationIndex: $destinationIndex}';
}
