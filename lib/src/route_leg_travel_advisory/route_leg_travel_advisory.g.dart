// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg_travel_advisory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLegTravelAdvisory _$RouteLegTravelAdvisoryFromJson(
        Map<String, dynamic> json) =>
    RouteLegTravelAdvisory(
      tollInfo: json['tollInfo'] == null
          ? null
          : TollInfo.fromJson(json['tollInfo'] as Map<String, dynamic>),
      speedReadingIntervals: (json['speedReadingIntervals'] as List<dynamic>?)
          ?.map((e) => SpeedReadingInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteLegTravelAdvisoryToJson(
        RouteLegTravelAdvisory instance) =>
    <String, dynamic>{
      'tollInfo': instance.tollInfo,
      'speedReadingIntervals': instance.speedReadingIntervals,
    };
