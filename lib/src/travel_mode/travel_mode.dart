import 'package:json_annotation/json_annotation.dart';

part 'travel_mode.g.dart';

/// Represents the mode of travel used for calculating directions.
@JsonEnum(alwaysCreate: true)
enum TravelMode {
  /// No travel mode specified.
  @JsonValue('TRAVEL_MODE_UNSPECIFIED')
  travelModeUnspecified,

  /// Travel by passenger car.
  @JsonValue('DRIVE')
  drive,

  /// Travel by bicycle.
  @JsonValue('BICYCLE')
  bicycle,

  /// Travel by walking.
  @JsonValue('WALK')
  walk,

  /// Two-wheeled, motorized vehicle. For example, motorcycle. Note that this
  /// differs from the BICYCLE travel mode which covers human-powered mode.
  @JsonValue('TWO_WHEELER')
  twoWheeler,

  /// Travel by public transit routes, where available.
  @JsonValue('TRANSIT')
  transit;

  String? toJson() => _$TravelModeEnumMap[this];
}
