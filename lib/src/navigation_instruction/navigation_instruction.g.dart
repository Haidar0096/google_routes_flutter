// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NavigationInstruction _$NavigationInstructionFromJson(
        Map<String, dynamic> json) =>
    NavigationInstruction(
      maneuver: $enumDecodeNullable(_$ManeuverEnumMap, json['maneuver']),
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$NavigationInstructionToJson(
        NavigationInstruction instance) =>
    <String, dynamic>{
      'maneuver': instance.maneuver,
      'instructions': instance.instructions,
    };

const _$ManeuverEnumMap = {
  Maneuver.maneuverUnspecified: 'MANEUVER_UNSPECIFIED',
  Maneuver.turnSlightLeft: 'TURN_SLIGHT_LEFT',
  Maneuver.turnSharpLeft: 'TURN_SHARP_LEFT',
  Maneuver.uTurnLeft: 'UTURN_LEFT',
  Maneuver.turnLeft: 'TURN_LEFT',
  Maneuver.turnSlightRight: 'TURN_SLIGHT_RIGHT',
  Maneuver.turnSharpRight: 'TURN_SHARP_RIGHT',
  Maneuver.uTurnRight: 'UTURN_RIGHT',
  Maneuver.turnRight: 'TURN_RIGHT',
  Maneuver.straight: 'STRAIGHT',
  Maneuver.rampLeft: 'RAMP_LEFT',
  Maneuver.rampRight: 'RAMP_RIGHT',
  Maneuver.merge: 'MERGE',
  Maneuver.forkLeft: 'FORK_LEFT',
  Maneuver.forkRight: 'FORK_RIGHT',
  Maneuver.ferry: 'FERRY',
  Maneuver.ferryTrain: 'FERRY_TRAIN',
  Maneuver.roundaboutLeft: 'ROUNDABOUT_LEFT',
  Maneuver.roundaboutRight: 'ROUNDABOUT_RIGHT',
  Maneuver.depart: 'DEPART',
  Maneuver.nameChange: 'NAME_CHANGE',
};
