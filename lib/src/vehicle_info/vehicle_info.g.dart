// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleInfo _$VehicleInfoFromJson(Map<String, dynamic> json) => VehicleInfo(
      emissionType: $enumDecodeNullable(
          _$VehicleEmissionTypeEnumMap, json['emissionType']),
    );

Map<String, dynamic> _$VehicleInfoToJson(VehicleInfo instance) =>
    <String, dynamic>{
      'emissionType': _$VehicleEmissionTypeEnumMap[instance.emissionType],
    };

const _$VehicleEmissionTypeEnumMap = {
  VehicleEmissionType.vehicleEmissionTypeUnspecified:
      'VEHICLE_EMISSION_TYPE_UNSPECIFIED',
  VehicleEmissionType.gasoline: 'GASOLINE',
  VehicleEmissionType.electric: 'ELECTRIC',
  VehicleEmissionType.hybrid: 'HYBRID',
  VehicleEmissionType.diesel: 'DIESEL',
};
