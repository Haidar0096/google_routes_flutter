import 'package:google_routes_flutter/src/vehicle_emission_type/vehicle_emission_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_info.g.dart';

/// Contains the vehicle information, such as the vehicle emission type.
@JsonSerializable()
class VehicleInfo {
  /// Describes the vehicle's emission type. Applies only to the DRIVE
  /// RouteTravelMode.
  final VehicleEmissionType? emissionType;

  VehicleInfo({
    this.emissionType,
  });

  factory VehicleInfo.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleInfoToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleInfo &&
          runtimeType == other.runtimeType &&
          emissionType == other.emissionType;

  @override
  int get hashCode => emissionType.hashCode;

  @override
  String toString() => 'VehicleInfo{emissionType: $emissionType}';
}
