// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitPreferences _$TransitPreferencesFromJson(Map<String, dynamic> json) =>
    TransitPreferences(
      allowedTravelModes: (json['allowedTravelModes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TransitTravelModeEnumMap, e))
          .toList(),
      routingPreference: $enumDecodeNullable(
          _$TransitRoutingPreferenceEnumMap, json['routingPreference']),
    );

Map<String, dynamic> _$TransitPreferencesToJson(TransitPreferences instance) =>
    <String, dynamic>{
      'allowedTravelModes': instance.allowedTravelModes
          ?.map((e) => _$TransitTravelModeEnumMap[e]!)
          .toList(),
      'routingPreference':
          _$TransitRoutingPreferenceEnumMap[instance.routingPreference],
    };

const _$TransitTravelModeEnumMap = {
  TransitTravelMode.transitTravelModeUnspecified:
      'TRANSIT_TRAVEL_MODE_UNSPECIFIED\t',
  TransitTravelMode.bus: 'BUS',
  TransitTravelMode.subway: 'SUBWAY',
  TransitTravelMode.train: 'TRAIN',
  TransitTravelMode.lightRail: 'LIGHT_RAIL',
  TransitTravelMode.rail: 'RAIL',
};

const _$TransitRoutingPreferenceEnumMap = {
  TransitRoutingPreference.transitRoutingPreferenceUnspecified:
      'TRANSIT_ROUTING_PREFERENCE_UNSPECIFIED',
  TransitRoutingPreference.lessWalking: 'LESS_WALKING',
  TransitRoutingPreference.fewerTransfers: 'FEWER_TRANSFERS',
};
