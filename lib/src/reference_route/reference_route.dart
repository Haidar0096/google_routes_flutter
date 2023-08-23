import 'package:json_annotation/json_annotation.dart';

part 'reference_route.g.dart';

/// A supported reference route on the ComputeRoutesRequest.
@JsonEnum(alwaysCreate: true)
enum ReferenceRoute {
  /// Not used. Requests containing this value fail.
  @JsonValue('REFERENCE_ROUTE_UNSPECIFIED')
  referenceRouteUnspecified,

  /// Fuel efficient route. Routes labeled with this value are determined to be
  /// optimized for parameters such as fuel consumption.
  @JsonValue('FUEL_EFFICIENT')
  fuelEfficient;

  String? toJson() => _$ReferenceRouteEnumMap[this];
}
