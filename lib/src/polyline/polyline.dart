import 'package:json_annotation/json_annotation.dart';

part 'polyline.g.dart';

/// Encapsulates an encoded polyline.
@JsonSerializable()
class Polyline {
  /// The string encoding of the polyline using the polyline encoding algorithm.
  /// (https://developers.google.com/maps/documentation/utilities/polylinealgorithm)
  final String? encodedPolyline;

  /// Specifies a polyline using the GeoJSON LineString format.
  /// (https://tools.ietf.org/html/rfc7946#section-3.1.4)
  final dynamic geoJsonLinestring;

  Polyline({
    this.encodedPolyline,
    this.geoJsonLinestring,
  });

  factory Polyline.fromJson(Map<String, dynamic> json) =>
      _$PolylineFromJson(json);

  Map<String, dynamic> toJson() => _$PolylineToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Polyline &&
          runtimeType == other.runtimeType &&
          encodedPolyline == other.encodedPolyline &&
          geoJsonLinestring == other.geoJsonLinestring;

  @override
  int get hashCode => encodedPolyline.hashCode ^ geoJsonLinestring.hashCode;

  @override
  String toString() =>
      'Polyline{encodedPolyline: $encodedPolyline, geoJsonLinestring: $geoJsonLinestring}';
}
