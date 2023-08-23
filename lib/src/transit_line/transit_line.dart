import 'package:google_routes_flutter/src/transit_agency/transit_agency.dart';
import 'package:google_routes_flutter/src/transit_vehicle/transit_vehicle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transit_line.g.dart';

/// Contains information about the transit line used in this step.
@JsonSerializable()
class TransitLine {
  /// The transit agency (or agencies) that operates this transit line.
  final List<TransitAgency>? agencies;

  /// The full name of this transit line, For example, "8 Avenue Local".
  final String? name;

  /// the URI for this transit line as provided by the transit agency.
  final String? uri;

  /// The color commonly used in signage for this line. Represented in hexadecimal.
  final String? color;

  /// The URI for the icon associated with this line.
  final String? iconUri;

  /// The short name of this transit line. This name will normally be a line
  /// number, such as "M7" or "355".
  final String? nameShort;

  /// The color commonly used in text on signage for this line. Represented in
  /// hexadecimal.
  final String? textColor;

  /// The type of vehicle that operates on this transit line.
  final TransitVehicle? vehicle;

  TransitLine({
    this.agencies,
    this.name,
    this.uri,
    this.color,
    this.iconUri,
    this.nameShort,
    this.textColor,
    this.vehicle,
  });

  factory TransitLine.fromJson(Map<String, dynamic> json) =>
      _$TransitLineFromJson(json);

  Map<String, dynamic> toJson() => _$TransitLineToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitLine &&
          runtimeType == other.runtimeType &&
          agencies == other.agencies &&
          name == other.name &&
          uri == other.uri &&
          color == other.color &&
          iconUri == other.iconUri &&
          nameShort == other.nameShort &&
          textColor == other.textColor &&
          vehicle == other.vehicle;

  @override
  int get hashCode =>
      agencies.hashCode ^
      name.hashCode ^
      uri.hashCode ^
      color.hashCode ^
      iconUri.hashCode ^
      nameShort.hashCode ^
      textColor.hashCode ^
      vehicle.hashCode;

  @override
  String toString() =>
      'TransitLine{agencies: $agencies, name: $name, uri: $uri, color: $color, iconUri: $iconUri, nameShort: $nameShort, textColor: $textColor, vehicle: $vehicle}';
}
