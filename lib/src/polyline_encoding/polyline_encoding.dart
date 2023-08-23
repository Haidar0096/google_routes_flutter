import 'package:json_annotation/json_annotation.dart';

part 'polyline_encoding.g.dart';

/// Specifies the preferred type of polyline to be returned.
@JsonEnum(alwaysCreate: true)
enum PolylineEncoding {
  /// No polyline type preference specified. Defaults to ENCODED_POLYLINE.
  @JsonValue('POLYLINE_ENCODING_UNSPECIFIED')
  polylineEncodingUnspecified,

  /// Specifies a polyline encoded using the polyline encoding algorithm.\
  /// (https://developers.google.com/maps/documentation/utilities/polylinealgorithm)
  @JsonValue('ENCODED_POLYLINE')
  encodedPolyline,

  /// Specifies a polyline using the GeoJSON LineString format
  /// (https://tools.ietf.org/html/rfc7946#section-3.1.4)
  @JsonValue('GEO_JSON_LINESTRING')
  geoJsonLinestring;

  String? toJson() => _$PolylineEncodingEnumMap[this];
}
