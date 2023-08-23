import 'package:google_routes_flutter/src/speed_reading_interval/speed_reading_interval.dart';
import 'package:google_routes_flutter/src/toll_info/toll_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_leg_travel_advisory.g.dart';

/// Contains the additional information that the user should be informed about
/// on a leg step, such as possible traffic zone restrictions.
@JsonSerializable()
class RouteLegTravelAdvisory {
  /// Contains information about tolls on the specific RouteLeg. This field is
  /// only populated if we expect there are tolls on the RouteLeg. If this
  /// field is set but the estimatedPrice subfield is not populated, we expect
  /// that road contains tolls but we do not know an estimated price. If this
  /// field does not exist, then there is no toll on the RouteLeg.
  final TollInfo? tollInfo;

  /// Speed reading intervals detailing traffic density. Applicable in case of
  /// TRAFFIC_AWARE and TRAFFIC_AWARE_OPTIMAL routing preferences. The intervals
  /// cover the entire polyline of the RouteLeg without overlap. The start point
  /// of a specified interval is the same as the end point of the preceding
  /// interval.
  /// <br></br><br></br>
  /// ### Example:
  /// polyline: A ---- B ---- C ---- D ---- E ---- F ---- G
  ///
  /// speedReadingIntervals: [A,C), [C,D), [D,G).
  final List<SpeedReadingInterval>? speedReadingIntervals;

  RouteLegTravelAdvisory({
    this.tollInfo,
    this.speedReadingIntervals,
  });

  factory RouteLegTravelAdvisory.fromJson(Map<String, dynamic> json) =>
      _$RouteLegTravelAdvisoryFromJson(json);

  Map<String, dynamic> toJson() => _$RouteLegTravelAdvisoryToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteLegTravelAdvisory &&
          runtimeType == other.runtimeType &&
          tollInfo == other.tollInfo &&
          speedReadingIntervals == other.speedReadingIntervals;

  @override
  int get hashCode => tollInfo.hashCode ^ speedReadingIntervals.hashCode;

  @override
  String toString() =>
      'RouteLegTravelAdvisory{tollInfo: $tollInfo, speedReadingIntervals: $speedReadingIntervals}';
}
