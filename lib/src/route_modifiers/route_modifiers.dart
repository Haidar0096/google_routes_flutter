import 'package:google_routes_flutter/src/toll_pass/toll_pass.dart';
import 'package:google_routes_flutter/src/vehicle_info/vehicle_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_modifiers.g.dart';

/// Encapsulates a set of optional conditions to satisfy when calculating the routes.
@JsonSerializable()
class RouteModifiers {
  /// When set to true, avoids toll roads where reasonable, giving preference
  /// to routes not containing toll roads. Applies only to the DRIVE and
  /// TWO_WHEELER RouteTravelMode.
  final bool? avoidTolls;

  /// When set to true, avoids highways where reasonable, giving preference to
  /// routes not containing highways. Applies only to the DRIVE and TWO_WHEELER
  /// RouteTravelMode.
  final bool? avoidHighways;

  /// When set to true, avoids ferries where reasonable, giving preference to
  /// routes not containing ferries. Applies only to the DRIVE andTWO_WHEELER
  /// RouteTravelMode.
  final bool? avoidFerries;

  /// When set to true, avoids navigating indoors where reasonable, giving
  /// preference to routes not containing indoor navigation. Applies only to the
  /// WALK RouteTravelMode.
  final bool? avoidIndoor;

  /// Specifies the vehicle information.
  final VehicleInfo? vehicleInfo;

  /// Encapsulates information about toll passes. If toll passes are provided,
  /// the API tries to return the pass price. If toll passes are not provided,
  /// the API treats the toll pass as unknown and tries to return the cash
  /// price. Applies only to the DRIVE and TWO_WHEELER RouteTravelMode.
  final List<TollPass>? tollPasses;

  RouteModifiers({
    this.avoidTolls,
    this.avoidHighways,
    this.avoidFerries,
    this.avoidIndoor,
    this.vehicleInfo,
    this.tollPasses,
  });

  factory RouteModifiers.fromJson(Map<String, dynamic> json) =>
      _$RouteModifiersFromJson(json);

  Map<String, dynamic> toJson() => _$RouteModifiersToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteModifiers &&
          runtimeType == other.runtimeType &&
          avoidTolls == other.avoidTolls &&
          avoidHighways == other.avoidHighways &&
          avoidFerries == other.avoidFerries &&
          avoidIndoor == other.avoidIndoor &&
          vehicleInfo == other.vehicleInfo &&
          tollPasses == other.tollPasses;

  @override
  int get hashCode =>
      avoidTolls.hashCode ^
      avoidHighways.hashCode ^
      avoidFerries.hashCode ^
      avoidIndoor.hashCode ^
      vehicleInfo.hashCode ^
      tollPasses.hashCode;

  @override
  String toString() =>
      'RouteModifiers{avoidTolls: $avoidTolls, avoidHighways: $avoidHighways, avoidFerries: $avoidFerries, avoidIndoor: $avoidIndoor, vehicleInfo: $vehicleInfo, tollPasses: $tollPasses}';
}
