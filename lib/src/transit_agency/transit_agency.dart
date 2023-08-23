import 'package:json_annotation/json_annotation.dart';

part 'transit_agency.g.dart';

/// A transit agency that operates a transit line.
@JsonSerializable()
class TransitAgency {
  /// The name of this transit agency.
  final String? name;

  /// The transit agency's locale-specific formatted phone number.
  final String? phoneNumber;

  /// The transit agency's URI.
  final String? uri;

  TransitAgency({
    this.name,
    this.phoneNumber,
    this.uri,
  });

  factory TransitAgency.fromJson(Map<String, dynamic> json) =>
      _$TransitAgencyFromJson(json);

  Map<String, dynamic> toJson() => _$TransitAgencyToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransitAgency &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          phoneNumber == other.phoneNumber &&
          uri == other.uri;

  @override
  int get hashCode => name.hashCode ^ phoneNumber.hashCode ^ uri.hashCode;

  @override
  String toString() =>
      'TransitAgency{name: $name, phoneNumber: $phoneNumber, uri: $uri}';
}
