// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg_step_transit_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLegStepTransitDetails _$RouteLegStepTransitDetailsFromJson(
        Map<String, dynamic> json) =>
    RouteLegStepTransitDetails(
      stopDetails: json['stopDetails'] == null
          ? null
          : TransitStopDetails.fromJson(
              json['stopDetails'] as Map<String, dynamic>),
      localizedValues: json['localizedValues'] == null
          ? null
          : TransitDetailsLocalizedValues.fromJson(
              json['localizedValues'] as Map<String, dynamic>),
      headsign: json['headsign'] as String?,
      headway: json['headway'] as String?,
      transitLine: json['transitLine'] == null
          ? null
          : TransitLine.fromJson(json['transitLine'] as Map<String, dynamic>),
      stopCount: json['stopCount'] as int?,
      tripShortText: json['tripShortText'] as String?,
    );

Map<String, dynamic> _$RouteLegStepTransitDetailsToJson(
        RouteLegStepTransitDetails instance) =>
    <String, dynamic>{
      'stopDetails': instance.stopDetails,
      'localizedValues': instance.localizedValues,
      'headsign': instance.headsign,
      'headway': instance.headway,
      'transitLine': instance.transitLine,
      'stopCount': instance.stopCount,
      'tripShortText': instance.tripShortText,
    };
