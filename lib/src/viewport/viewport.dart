import 'package:google_routes_flutter/src/latlng/latlng.dart';
import 'package:json_annotation/json_annotation.dart';

part 'viewport.g.dart';

/// A latitude-longitude viewport, represented as two diagonally opposite low
/// and high points. A viewport is considered a closed region, i.e. it includes
/// its boundary. The latitude bounds must range between -90 to 90 degrees
/// inclusive, and the longitude bounds must range between -180 to 180 degrees
/// inclusive. Various cases include:
/// <br></br>
/// If low = high, the viewport consists of that single point.
/// <br></br>
/// If low.longitude > high.longitude, the longitude range is inverted
/// (the viewport crosses the 180 degree longitude line).
/// <br></br>
/// If low.longitude = -180 degrees and high.longitude = 180 degrees,
/// the viewport includes all longitudes.
/// <br></br>
/// If low.longitude = 180 degrees and high.longitude = -180 degrees, the
/// longitude range is empty.
/// <br></br>
/// If low.latitude > high.latitude, the latitude range is empty.
/// <br></br>
/// Both low and high must be populated, and the represented box cannot be empty
/// (as specified by the definitions above). An empty viewport will result in
/// an error.
/// <br></br>
/// For example, this viewport fully encloses New York City:
/// <br></br>
/// { "low": { "latitude": 40.477398, "longitude": -74.259087 },
/// "high": { "latitude": 40.91618, "longitude": -73.70018 } }
@JsonSerializable()
class Viewport {
  /// Required. The low point of the viewport.
  final LatLng? low;

  /// Required. The high point of the viewport.
  final LatLng? high;

  Viewport({
    this.low,
    this.high,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);

  Map<String, dynamic> toJson() => _$ViewportToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Viewport &&
          runtimeType == other.runtimeType &&
          low == other.low &&
          high == other.high;

  @override
  int get hashCode => low.hashCode ^ high.hashCode;

  @override
  String toString() => 'Viewport{low: $low, high: $high}';
}
