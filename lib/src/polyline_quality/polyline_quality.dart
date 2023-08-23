import 'package:json_annotation/json_annotation.dart';

part 'polyline_quality.g.dart';

/// A set of values that specify the quality of the polyline.
@JsonEnum(alwaysCreate: true)
enum PolylineQuality {
  /// No polyline quality preference specified. Defaults to OVERVIEW.
  @JsonValue('POLYLINE_QUALITY_UNSPECIFIED')
  polylineQualityUnspecified,

  /// Specifies a high-quality polyline - which is composed using more points
  /// than OVERVIEW, at the cost of increased response size. Use this value when
  /// you need more precision.
  @JsonValue('HIGH_QUALITY')
  highQuality,

  /// Specifies an overview polyline - which is composed using a small number of
  /// points. Use this value when displaying an overview of the route. Using
  /// this option has a lower request latency compared to using the HIGH_QUALITY
  /// option.
  @JsonValue('OVERVIEW')
  overview;

  String? toJson() => _$PolylineQualityEnumMap[this];
}
