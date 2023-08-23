import 'package:json_annotation/json_annotation.dart';

part 'transit_travel_mode.g.dart';

/// A set of values used to specify the mode of transit.
@JsonEnum(alwaysCreate: true)
enum TransitTravelMode {
  /// No transit travel mode specified.
  @JsonValue('TRANSIT_TRAVEL_MODE_UNSPECIFIED	')
  transitTravelModeUnspecified,

  /// Travel by bus.
  @JsonValue('BUS')
  bus,

  /// Travel by subway.
  @JsonValue('SUBWAY')
  subway,

  /// Travel by train.
  @JsonValue('TRAIN')
  train,

  /// Travel by light rail or tram.
  @JsonValue('LIGHT_RAIL')
  lightRail,

  /// Travel by rail. This is equivalent to a combination of SUBWAY, TRAIN,
  /// and LIGHT_RAIL.
  @JsonValue('RAIL')
  rail,
}
