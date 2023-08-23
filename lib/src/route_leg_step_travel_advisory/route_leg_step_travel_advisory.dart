import 'package:google_routes_flutter/src/speed_reading_interval/speed_reading_interval.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg_step_travel_advisory.g.dart';

/// Contains the additional information that the user should be informed about,
/// such as possible traffic zone restrictions on a leg step.
@JsonSerializable()
class RouteLegStepTravelAdvisory {
  /// NOTE: This field is not currently populated.
  final List<SpeedReadingInterval>? speedReadingIntervals;

  RouteLegStepTravelAdvisory({
    this.speedReadingIntervals,
  });

  factory RouteLegStepTravelAdvisory.fromJson(Map<String, dynamic> json) =>
      _$RouteLegStepTravelAdvisoryFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegStepTravelAdvisoryToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLegStepTravelAdvisory &&
          runtimeType == other.runtimeType &&
          speedReadingIntervals == other.speedReadingIntervals;

  @override
  int get hashCode => speedReadingIntervals.hashCode;

  @override
  String toString() =>
      'RouteLegStepTravelAdvisory{speedReadingIntervals: $speedReadingIntervals}';
}
