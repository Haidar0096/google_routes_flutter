import 'package:google_routes_flutter/src/fallback_info/fallback_info.dart';
import 'package:google_routes_flutter/src/geocoding_results/geocoding_results.dart';
import 'package:google_routes_flutter/src/route/route.dart';
import 'package:json_annotation/json_annotation.dart';

part 'compute_routes_result.g.dart';

/// v2.computeRoutes the response message.
/// If successful, the response body contains data with this following structure.
@JsonSerializable()
class ComputeRouteResult {
  /// Contains an array of computed routes (up to three) when you specify
  /// compute_alternatives_routes, and contains just one route when you don't.
  /// When this array contains multiple entries, the first one is the most
  /// recommended route. If the array is empty, then it means no route could
  /// be found.
  final List<Route>? routes;

  /// In some cases when the server is not able to compute the route results
  /// with all of the input preferences, it may fallback to using a different
  /// way of computation. When fallback mode is used, this field contains
  /// detailed info about the fallback response. Otherwise this field is unset.
  final FallbackInfo? fallbackInfo;

  /// Contains geocoding response info for waypoints specified as addresses.
  final GeocodingResults? geocodingResults;

  ComputeRouteResult({
    this.routes,
    this.fallbackInfo,
    this.geocodingResults,
  });

  factory ComputeRouteResult.fromJson(Map<String, dynamic> json) =>
      _$ComputeRouteResultFromJson(json);

  Map<String, dynamic> toJson() => _$ComputeRouteResultToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComputeRouteResult &&
          runtimeType == other.runtimeType &&
          routes == other.routes &&
          fallbackInfo == other.fallbackInfo &&
          geocodingResults == other.geocodingResults;

  @override
  int get hashCode =>
      routes.hashCode ^ fallbackInfo.hashCode ^ geocodingResults.hashCode;

  @override
  String toString() =>
      'ComputeRouteResult{routes: $routes, fallbackInfo: $fallbackInfo, geocodingResults: $geocodingResults}';
}
