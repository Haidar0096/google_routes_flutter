import 'package:json_annotation/json_annotation.dart';

part 'maneuver.g.dart';

/// A set of values that specify the navigation action to take for the current
/// step (e.g., turn left, merge, straight, etc.).
@JsonEnum(alwaysCreate: true)
enum Maneuver {
  /// Not used.
  @JsonValue('MANEUVER_UNSPECIFIED')
  maneuverUnspecified,

  /// Turn slightly to the left.
  @JsonValue('TURN_SLIGHT_LEFT')
  turnSlightLeft,

  /// Turn sharply to the left.
  @JsonValue('TURN_SHARP_LEFT')
  turnSharpLeft,

  /// Make a left u-turn.
  @JsonValue('UTURN_LEFT')
  uTurnLeft,

  /// Turn left.
  @JsonValue('TURN_LEFT')
  turnLeft,

  /// Turn slightly to the right.
  @JsonValue('TURN_SLIGHT_RIGHT')
  turnSlightRight,

  /// Turn sharply to the right.
  @JsonValue('TURN_SHARP_RIGHT')
  turnSharpRight,

  /// Make a right u-turn.
  @JsonValue('UTURN_RIGHT')
  uTurnRight,

  /// Turn right.
  @JsonValue('TURN_RIGHT')
  turnRight,

  /// Go straight.
  @JsonValue('STRAIGHT')
  straight,

  /// Take the left ramp.
  @JsonValue('RAMP_LEFT')
  rampLeft,

  /// Take the right ramp.
  @JsonValue('RAMP_RIGHT')
  rampRight,

  /// Merge into traffic.
  @JsonValue('MERGE')
  merge,

  /// Take the left fork.
  @JsonValue('FORK_LEFT')
  forkLeft,

  /// Take the right fork.
  @JsonValue('FORK_RIGHT')
  forkRight,

  /// Take the ferry.
  @JsonValue('FERRY')
  ferry,

  /// Take the train leading onto the ferry.
  @JsonValue('FERRY_TRAIN')
  ferryTrain,

  /// Turn left at the roundabout.
  @JsonValue('ROUNDABOUT_LEFT')
  roundaboutLeft,

  /// Turn right at the roundabout.
  @JsonValue('ROUNDABOUT_RIGHT')
  roundaboutRight,

  /// Initial maneuver.
  @JsonValue('DEPART')
  depart,

  /// Used to indicate a street name change.
  @JsonValue('NAME_CHANGE')
  nameChange;

  String? toJson() => _$ManeuverEnumMap[this];
}
