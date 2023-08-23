import 'package:google_routes_flutter/src/localized_text/localized_text.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localized_time.g.dart';

/// Localized description of time.
@JsonSerializable()
class LocalizedTime {
  /// The time specified as a string in a given time zone.
  final LocalizedText? time;

  /// Contains the time zone. The value is the name of the time zone as defined
  /// in the IANA Time Zone Database, e.g. "America/New_York".
  final String? timeZone;

  LocalizedTime({
    this.time,
    this.timeZone,
  });

  factory LocalizedTime.fromJson(Map<String, dynamic> json) =>
      _$LocalizedTimeFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizedTimeToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalizedTime &&
          runtimeType == other.runtimeType &&
          time == other.time &&
          timeZone == other.timeZone;

  @override
  int get hashCode => time.hashCode ^ timeZone.hashCode;

  @override
  String toString() => 'LocalizedTime{time: $time, timeZone: $timeZone}';
}
