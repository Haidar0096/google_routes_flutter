import 'package:json_annotation/json_annotation.dart';

part 'vehicle_emission_type.g.dart';

/// A set of values describing the vehicle's emission type. Applies only to the
/// DRIVE RouteTravelMode.
@JsonEnum(alwaysCreate: true)
enum VehicleEmissionType {
  /// No emission type specified. Default to GASOLINE.
  @JsonValue('VEHICLE_EMISSION_TYPE_UNSPECIFIED')
  vehicleEmissionTypeUnspecified,

  /// Gasoline/petrol fueled vehicle.
  @JsonValue('GASOLINE')
  gasoline,

  /// Electricity powered vehicle.
  @JsonValue('ELECTRIC')
  electric,

  /// Hybrid fuel (such as gasoline + electric) vehicle.
  @JsonValue('HYBRID')
  hybrid,

  /// Diesel fueled vehicle.
  @JsonValue('DIESEL')
  diesel,
}
