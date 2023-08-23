import 'package:json_annotation/json_annotation.dart';

part 'traffic_model.g.dart';

/// Specifies the assumptions to use when calculating time in traffic. This
/// setting affects the value returned in the duration field in the response,
/// which contains the predicted time in traffic based on historical averages.
@JsonEnum(alwaysCreate: true)
enum TrafficModel {
  /// Unused. If specified, will default to BEST_GUESS.
  @JsonValue('TRAFFIC_MODEL_UNSPECIFIED')
  trafficModelUnspecified,

  /// Indicates that the returned duration should be the best estimate of travel
  /// time given what is known about both historical traffic conditions and live
  /// traffic. Live traffic becomes more important the closer the departureTime
  /// is to now.
  @JsonValue('BEST_GUESS')
  bestGuess,

  /// Indicates that the returned duration should be longer than the actual
  /// travel time on most days, though occasional days with particularly bad
  /// traffic conditions may exceed this value.
  @JsonValue('PESSIMISTIC')
  pessimistic,

  /// Indicates that the returned duration should be shorter than the actual
  /// travel time on most days, though occasional days with particularly good
  /// traffic conditions may be faster than this value.
  @JsonValue('OPTIMISTIC')
  optimistic;

  String? toJson() => _$TrafficModelEnumMap[this];
}
