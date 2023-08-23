import 'package:json_annotation/json_annotation.dart';

part 'route_travel_mode.g.dart';

/// A set of values used to specify the mode of travel. NOTE: WALK, BICYCLE, and
/// TWO_WHEELER routes are in beta and might sometimes be missing clear
/// sidewalks, pedestrian paths, or bicycling paths. You must display this
/// warning to the user for all walking, bicycling, and two-wheel routes that
/// you display in your app.
@JsonEnum(alwaysCreate: true)
enum RouteTravelMode {
  /// No travel mode specified. Defaults to DRIVE.
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
  transit,
}
