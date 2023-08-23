// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg_step_travel_advisory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLegStepTravelAdvisory _$RouteLegStepTravelAdvisoryFromJson(
        Map<String, dynamic> json) =>
    RouteLegStepTravelAdvisory(
      speedReadingIntervals: (json['speedReadingIntervals'] as List<dynamic>?)
          ?.map((e) => SpeedReadingInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteLegStepTravelAdvisoryToJson(
        RouteLegStepTravelAdvisory instance) =>
    <String, dynamic>{
      'speedReadingIntervals': instance.speedReadingIntervals,
    };
