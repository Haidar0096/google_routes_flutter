// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StepsOverview _$StepsOverviewFromJson(Map<String, dynamic> json) =>
    StepsOverview(
      multiModalSegments: (json['multiModalSegments'] as List<dynamic>?)
          ?.map((e) => MultiModalSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StepsOverviewToJson(StepsOverview instance) =>
    <String, dynamic>{
      'multiModalSegments': instance.multiModalSegments,
    };
