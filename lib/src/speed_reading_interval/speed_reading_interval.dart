import 'package:google_routes_flutter/src/speed/speed.dart';
import 'package:json_annotation/json_annotation.dart';

part 'speed_reading_interval.g.dart';

/// Traffic density indicator on a contiguous segment of a polyline or path.
/// Given a path with points P_0, P_1, ... , P_N (zero-based index), the
/// SpeedReadingInterval defines an interval and describes its traffic using the
/// following categories.
@JsonSerializable()
class SpeedReadingInterval {
  /// The starting index of this interval in the polyline.
  final int? startPolylinePointIndex;

  /// The ending index of this interval in the polyline.
  final int? endPolylinePointIndex;

  /// Traffic speed in this interval.
  final Speed? speed;

  const SpeedReadingInterval({
    this.startPolylinePointIndex,
    this.endPolylinePointIndex,
    this.speed,
  });

  factory SpeedReadingInterval.fromJson(Map<String, dynamic> json) =>
      _$SpeedReadingIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$SpeedReadingIntervalToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpeedReadingInterval &&
          runtimeType == other.runtimeType &&
          startPolylinePointIndex == other.startPolylinePointIndex &&
          endPolylinePointIndex == other.endPolylinePointIndex &&
          speed == other.speed;

  @override
  int get hashCode =>
      startPolylinePointIndex.hashCode ^
      endPolylinePointIndex.hashCode ^
      speed.hashCode;

  @override
  String toString() =>
      'SpeedReadingInterval{startPolylinePointIndex: $startPolylinePointIndex, endPolylinePointIndex: $endPolylinePointIndex, speed: $speed}';
}
