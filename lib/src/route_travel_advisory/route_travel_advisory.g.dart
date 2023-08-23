// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_travel_advisory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteTravelAdvisory _$RouteTravelAdvisoryFromJson(Map<String, dynamic> json) =>
    RouteTravelAdvisory(
      tollInfo: json['tollInfo'] == null
          ? null
          : TollInfo.fromJson(json['tollInfo'] as Map<String, dynamic>),
      speedReadingIntervals: (json['speedReadingIntervals'] as List<dynamic>?)
          ?.map((e) => SpeedReadingInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
      fuelConsumptionMicroliters: json['fuelConsumptionMicroliters'] as String?,
      routeRestrictionsPartiallyIgnored:
          json['routeRestrictionsPartiallyIgnored'] as bool?,
      transitFare: json['transitFare'] == null
          ? null
          : Money.fromJson(json['transitFare'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteTravelAdvisoryToJson(
        RouteTravelAdvisory instance) =>
    <String, dynamic>{
      'tollInfo': instance.tollInfo,
      'speedReadingIntervals': instance.speedReadingIntervals,
      'fuelConsumptionMicroliters': instance.fuelConsumptionMicroliters,
      'routeRestrictionsPartiallyIgnored':
          instance.routeRestrictionsPartiallyIgnored,
      'transitFare': instance.transitFare,
    };
