// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitVehicle _$TransitVehicleFromJson(Map<String, dynamic> json) =>
    TransitVehicle(
      name: json['name'] == null
          ? null
          : LocalizedText.fromJson(json['name'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$TransitVehicleTypeEnumMap, json['type']),
      iconUri: json['iconUri'] as String?,
      localIconUri: json['localIconUri'] as String?,
    );

Map<String, dynamic> _$TransitVehicleToJson(TransitVehicle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'iconUri': instance.iconUri,
      'localIconUri': instance.localIconUri,
    };

const _$TransitVehicleTypeEnumMap = {
  TransitVehicleType.transitVehicleTypeUnspecified:
      'TRANSIT_VEHICLE_TYPE_UNSPECIFIED',
  TransitVehicleType.bus: 'BUS',
  TransitVehicleType.cableCar: 'CABLE_CAR',
  TransitVehicleType.commuterTrain: 'COMMUTER_TRAIN',
  TransitVehicleType.ferry: 'FERRY',
  TransitVehicleType.funicular: 'FUNICULAR',
  TransitVehicleType.gondolaLift: 'GONDOLA_LIFT',
  TransitVehicleType.heavyRail: 'HEAVY_RAIL',
  TransitVehicleType.highSpeedTrain: 'HIGH_SPEED_TRAIN',
  TransitVehicleType.intercityBus: 'INTERCITY_BUS',
  TransitVehicleType.longDistanceTrain: 'LONG_DISTANCE_TRAIN',
  TransitVehicleType.metroRail: 'METRO_RAIL',
  TransitVehicleType.monorail: 'MONORAIL',
  TransitVehicleType.other: 'OTHER',
  TransitVehicleType.rail: 'RAIL',
  TransitVehicleType.shareTaxi: 'SHARE_TAXI',
  TransitVehicleType.subway: 'SUBWAY',
  TransitVehicleType.tram: 'TRAM',
  TransitVehicleType.trolleybus: 'TROLLEYBUS',
};
