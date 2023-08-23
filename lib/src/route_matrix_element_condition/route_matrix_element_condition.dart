import 'package:json_annotation/json_annotation.dart';

part 'route_matrix_element_condition.g.dart';

/// The condition of the route being returned.
@JsonEnum(alwaysCreate: true)
enum RouteMatrixElementCondition {
  /// Only used when the status of the element is not OK.
  @JsonValue('ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED')
  routeMatrixElementConditionUnspecified,

  /// A route was found, and the corresponding information was filled out for
  /// the element.
  @JsonValue('ROUTE_EXISTS')
  routeExists,

  /// No route could be found. Fields containing route information, such as
  /// distanceMeters or duration, will not be filled out in the element.
  @JsonValue('ROUTE_NOT_FOUND')
  routeNotFound;

  String? toJson() => _$RouteMatrixElementConditionEnumMap[this];
}
