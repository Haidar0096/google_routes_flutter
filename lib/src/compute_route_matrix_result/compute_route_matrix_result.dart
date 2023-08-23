import 'package:google_routes_flutter/src/route_matrix_entry/route_matrix_entry.dart';
import 'package:json_annotation/json_annotation.dart';

part 'compute_route_matrix_result.g.dart';

/// The result of a route matrix computation, i.e. a call to
/// v2.computeRouteMatrix API.
@JsonSerializable()
class ComputeRouteMatrixResult {
  final List<RouteMatrixEntry>? entries;

  ComputeRouteMatrixResult({
    this.entries,
  });

  factory ComputeRouteMatrixResult.fromJson(Map<String, dynamic> json) =>
      _$ComputeRouteMatrixResultFromJson(json);

  Map<String, dynamic> toJson() => _$ComputeRouteMatrixResultToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComputeRouteMatrixResult &&
          runtimeType == other.runtimeType &&
          entries == other.entries;

  @override
  int get hashCode => entries.hashCode;

  @override
  String toString() => 'ComputeRouteMatrixResult{entries: $entries}';
}
