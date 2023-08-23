import 'package:json_annotation/json_annotation.dart';

part 'speed.g.dart';

/// The classification of polyline speed based on traffic data.
@JsonEnum(alwaysCreate: true)
enum Speed {
  /// Default value. This value is unused.
  @JsonValue('SPEED_UNSPECIFIED')
  speedUnspecified,

  /// Normal speed, no slowdown is detected.
  @JsonValue('NORMAL')
  normal,

  /// Slowdown detected, but no traffic jam formed.
  @JsonValue('SLOW')
  slow,

  /// Traffic jam detected
  @JsonValue('TRAFFIC_JAM')
  trafficJam,
}
