import 'package:google_routes_flutter/src/localized_text/localized_text.dart';
import 'package:google_routes_flutter/src/transit_vehicle_type/transit_vehicle_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transit_vehicle.g.dart';

/// Information about a vehicle used in transit routes.
@JsonSerializable()
class TransitVehicle {
  /// The name of this vehicle, capitalized.
  final LocalizedText? name;

  /// The type of vehicle used.
  final TransitVehicleType? type;

  /// The URI for an icon associated with this vehicle type.
  final String? iconUri;

  /// The URI for the icon associated with this vehicle type, based on the local
  /// transport signage.
  final String? localIconUri;

  TransitVehicle({
    this.name,
    this.type,
    this.iconUri,
    this.localIconUri,
  });

  factory TransitVehicle.fromJson(Map<String, dynamic> json) =>
      _$TransitVehicleFromJson(json);

  Map<String, dynamic> toJson() => _$TransitVehicleToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitVehicle &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          type == other.type &&
          iconUri == other.iconUri &&
          localIconUri == other.localIconUri;

  @override
  int get hashCode =>
      name.hashCode ^ type.hashCode ^ iconUri.hashCode ^ localIconUri.hashCode;

  @override
  String toString() =>
      'TransitVehicle{name: $name, type: $type, iconUri: $iconUri, localIconUri: $localIconUri}';
}
