import 'dart:convert';
import 'package:google_routes_flutter/src/compute_routes_result/compute_routes_result.dart';
import 'package:google_routes_flutter/src/extra_computation/extra_computation.dart';
import 'package:google_routes_flutter/src/polyline_encoding/polyline_encoding.dart';
import 'package:google_routes_flutter/src/polyline_quality/polyline_quality.dart';
import 'package:google_routes_flutter/src/reference_route/reference_route.dart';
import 'package:google_routes_flutter/src/route_matrix_destination/route_matrix_destination.dart';
import 'package:google_routes_flutter/src/route_matrix_entry/route_matrix_entry.dart';
import 'package:google_routes_flutter/src/route_matrix_origin/route_matrix_origin.dart';
import 'package:google_routes_flutter/src/route_modifiers/route_modifiers.dart';
import 'package:google_routes_flutter/src/routing_preference/routing_preference.dart';
import 'package:google_routes_flutter/src/traffic_model/traffic_model.dart';
import 'package:google_routes_flutter/src/transit_preferences/transit_preferences.dart';
import 'package:google_routes_flutter/src/travel_mode/travel_mode.dart';
import 'package:google_routes_flutter/src/unit/unit.dart';
import 'package:google_routes_flutter/src/waypoint/waypoint.dart';
import 'package:http/http.dart' as http;

/// Returns the primary route along with optional alternate routes, given a
/// set of terminal and intermediate waypoints.
///
/// Throws an exception if the request fails.
///
/// <br></br>
/// <br></br>
///
/// ### NOTE
/// This method requires that you specify a response field mask in the input.
///
/// For example, you can add the following as a header of your request:
/// - Field mask of all available fields (for manual inspection):
/// X-Goog-FieldMask: *
/// - Field mask of Route-level duration, distance, and polyline (an example
/// production setup): X-Goog-FieldMask: routes.duration,routes.distanceMeters,
/// routes.polyline.encodedPolyline
///
/// <br></br>
/// <br></br>
///
/// ### Params
/// - [origin]: Required. Origin waypoint.
/// - [destination]: Required. Destination waypoint.
/// - [xGoogFieldMask] : Required. The field mask specifying the fields to be
/// returned in the response.
/// - [apiKey]: Required. Your application's API key. This key identifies your
/// application for purposes of quota management.
/// - [intermediates]: Optional. A set of waypoints along the route (excluding
/// terminal points), for either stopping at or passing by. Up to 25
/// intermediate waypoints are supported.
/// - [travelMode]: Optional. Specifies the mode of transportation.
/// - [routingPreference]: Optional. Specifies how to compute the route. The
/// server attempts to use the selected routing preference to compute the
/// route. If the routing preference results in an error or an extra long
/// latency, then an error is returned. You can specify this option only when
/// the travelMode is DRIVE or TWO_WHEELER, otherwise the request fails.
/// - [polyLineQuality]: Optional. Specifies your preference for the quality
/// of the polyline.
/// - [polyLineEncoding]: Optional. Specifies the preferred encoding for the
/// polyline.
/// - [departureTime]: Optional. The departure time. If you don't set this
/// value, then this value defaults to the time that you made the request.
/// NOTE: You can only specify a departureTime in the past when
/// RouteTravelMode is set to TRANSIT.
/// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
/// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
/// "2014-10-02T15:01:23.045123456Z".
/// - [arrivalTime]: Optional. The arrival time. NOTE: Can only be set when
/// RouteTravelMode is set to TRANSIT. You can specify either departureTime
/// or arrivalTime, but not both.
/// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution
/// and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
/// "2014-10-02T15:01:23.045123456Z".
/// - [computeAlternativeRoutes]: Optional. Specifies whether to calculate
/// alternate routes in addition to the route. No alternative routes are
/// returned for requests that have intermediate waypoints.
/// - [routeModifiers]: Optional. A set of conditions to satisfy that affect
/// the way routes are calculated.
/// - [languageCode]: Optional. The BCP-47 language code, such as "en-US" or
/// "sr-Latn". For more information,
/// see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
/// See Language Support (https://developers.google.com/maps/faq#languagesupport)
/// for the list of supported languages. When you don't
/// provide this value, the display language is inferred from the location of
/// the route request.
/// - [regionCode]: Optional. The region code, specified as a ccTLD
/// ("top-level domain") two-character value. For more information see
/// https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains#Country_code_top-level_domains
/// - [units]: Optional. Specifies the units of measure for the display fields.
/// These fields include the instruction field in NavigationInstruction. The
/// units of measure used for the route, leg, step distance, and duration are
/// not affected by this value. If you don't provide this value, then the
/// display units are inferred from the location of the first origin.
/// - [optimizeWaypointOrder]: Optional. If set to true, the service attempts
/// to minimize the overall cost of the route by re-ordering the specified
/// intermediate waypoints. The request fails if any of the intermediate
/// waypoints is a via waypoint.
/// Use ComputeRoutesResponse.Routes.optimized_intermediate_waypoint_index
/// to find the new ordering.
/// If ComputeRoutesResponseroutes.optimized_intermediate_waypoint_index is
/// not requested in the X-Goog-FieldMask header, the request fails.
/// If optimizeWaypointOrder is set to false,
/// ComputeRoutesResponse.optimized_intermediate_waypoint_index will be empty.
/// - [requestedReferenceRoutes]: Optional. Specifies what reference routes to
/// calculate as part of the request in addition to the default route. A
/// reference route is a route with a different route calculation objective
/// than the default route. For example a FUEL_EFFICIENT reference route
/// calculation takes into account various parameters that would generate an
/// optimal fuel efficient route.
/// - [extraComputations]: Optional. A list of extra computations which may
/// be used to complete the request. Note: These extra computations may return
/// extra fields on the response. These extra fields must also be specified
/// in the field mask to be returned in the response.
/// - [trafficModel]: Optional. Specifies the assumptions to use when
/// calculating time in traffic. This setting affects the value returned in
/// the duration field in the Route and RouteLeg which contains the predicted
/// time in traffic based on historical averages. TrafficModel is only
/// available for requests that have set RoutingPreference to
/// TRAFFIC_AWARE_OPTIMAL and RouteTravelMode to DRIVE. Defaults to
/// BEST_GUESS if traffic is requested and TrafficModel is not specified.
/// - [transitPreferences]: Optional. Specifies preferences that influence
/// the route returned for TRANSIT routes. NOTE: You can only specify a
/// transitPreferences when RouteTravelMode is set to TRANSIT.
/// - [CancelToken]: Optional. A cancel token that can be used to cancel the
/// request.
Future<ComputeRouteResult> computeRoute({
  required Waypoint origin,
  required Waypoint destination,
  required String xGoogFieldMask,
  required String apiKey,
  List<Waypoint>? intermediates,
  TravelMode? travelMode,
  RoutingPreference? routingPreference,
  PolylineQuality? polyLineQuality,
  PolylineEncoding? polyLineEncoding,
  String? departureTime,
  String? arrivalTime,
  bool? computeAlternativeRoutes,
  RouteModifiers? routeModifiers,
  String? languageCode,
  String? regionCode,
  Unit? units,
  bool? optimizeWaypointOrder,
  List<ReferenceRoute>? requestedReferenceRoutes,
  List<ExtraComputation>? extraComputations,
  TrafficModel? trafficModel,
  TransitPreferences? transitPreferences,
}) async {
  final http.Response response = await http.post(
    Uri.parse('https://routes.googleapis.com/directions/v2:computeRoutes'),
    headers: {
      'X-Goog-Api-Key': apiKey,
      'X-Goog-FieldMask': xGoogFieldMask,
    },
    body: jsonEncode(
      {
        'origin': origin.toJson(),
        'destination': destination.toJson(),
        if (intermediates != null)
          'intermediates': intermediates.map((i) => i.toJson()).toList(),
        if (travelMode != null) 'travelMode': travelMode.toJson(),
        if (routingPreference != null)
          'routingPreference': routingPreference.toJson(),
        if (polyLineQuality != null)
          'polylineQuality': polyLineQuality.toJson(),
        if (polyLineEncoding != null)
          'polylineEncoding': polyLineEncoding.toJson(),
        if (departureTime != null) 'departureTime': departureTime,
        if (arrivalTime != null) 'arrivalTime': arrivalTime,
        if (computeAlternativeRoutes != null)
          'computeAlternativeRoutes': computeAlternativeRoutes,
        if (routeModifiers != null) 'routeModifiers': routeModifiers.toJson(),
        if (languageCode != null) 'languageCode': languageCode,
        if (regionCode != null) 'regionCode': regionCode,
        if (units != null) 'units': units.toJson(),
        if (optimizeWaypointOrder != null)
          'optimizeWaypointOrder': optimizeWaypointOrder,
        if (requestedReferenceRoutes != null)
          'requestedReferenceRoutes':
              requestedReferenceRoutes.map((r) => r.toJson()).toList(),
        if (extraComputations != null)
          'extraComputations':
              extraComputations.map((c) => c.toJson()).toList(),
        if (trafficModel != null) 'trafficModel': trafficModel.toJson(),
        if (transitPreferences != null)
          'transitPreferences': transitPreferences.toJson(),
      },
    ),
  );
  return ComputeRouteResult.fromJson(jsonDecode(response.body));
}

/// Takes in a list of origins and destinations and returns a stream containing
/// route information for each combination of origin and destination.
///
/// Throws an exception if the request fails.
///
/// <br></br>
/// <br></br>
///
/// ### NOTE
/// This method requires that you specify a response field mask in the
/// input.
/// <br></br>
/// <br></br>
/// It is critical that you include status in your field mask as otherwise all
/// messages will appear to be OK.
///
/// <br></br>
/// <br></br>
///
/// ### Params
/// - [origins] : Required. Array of origins, which determines the rows of the
/// response matrix. Several size restrictions apply to the cardinality of
/// origins and destinations:
/// <br></br>The sum of the number of origins + the number of destinations
/// specified as either placeId or address must be no greater than 50.
/// <br></br>The product of number of origins × number of destinations must
/// be no  greater than 625 in any case.
/// <br></br>The product of the number of origins × number of destinations
/// must be no greater than 100 if routingPreference is set to
/// TRAFFIC_AWARE_OPTIMAL.
/// <br></br>The product of the number of origins × number of destinations
/// must be no greater than 100 if travelMode is set to TRANSIT.
/// - [destinations] : Required. Array of destinations, which determines the
/// columns of the response matrix.
/// - [xGoogFieldMask] : Required. The field mask specifying the fields to be
/// returned in the response.
/// - [apiKey] : Required. Your application's API key. This key identifies
/// your application for purposes of quota management.
/// - [travelMode] : Optional. Specifies the mode of transportation.
/// - [routingPreference] : Optional. Specifies how to compute the route.
/// The server attempts to use the selected routing preference to compute
/// the route. If the routing preference results in an error or an extra
/// long latency, an error is returned. You can specify this option only
/// when the travelMode is DRIVE or TWO_WHEELER, otherwise the request fails.
/// - [departureTime] : Optional. The departure time. If you don't set this
/// value, then this value defaults to the time that you made the request.
/// NOTE: You can only specify a departureTime in the past when
/// RouteTravelMode is set to TRANSIT.
/// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution
/// and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
/// "2014-10-02T15:01:23.045123456Z".
/// - [arrivalTime] : Optional. The arrival time. NOTE: Can only be set when
/// RouteTravelMode is set to TRANSIT. You can specify either departureTime
/// or arrivalTime, but not both.
/// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
/// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
/// "2014-10-02T15:01:23.045123456Z".
/// - [languageCode] : Optional. The BCP-47 language code, such as "en-US" or
/// "sr-Latn". For more information, see
/// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
/// See Language Support for the list of supported languages. When you don't
/// provide this value, the display language is inferred from the location
/// of the first origin.
/// - [regionCode] : Optional. The region code, specified as a ccTLD
/// ("top-level domain") two-character value. For more information
/// see https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains#Country_code_top-level_domains
/// - [extraComputations] : Optional. A list of extra computations which may
/// be used to complete the request. Note: These extra computations may return
/// extra fields on the response. These extra fields must also be specified
/// in the field mask to be returned in the response.
/// - [trafficModel] : Optional. Specifies the assumptions to use when
/// calculating time in traffic. This setting affects the value returned
/// in the duration field in the RouteMatrixElement which contains the
/// predicted time in traffic based on historical averages. RoutingPreference
/// to TRAFFIC_AWARE_OPTIMAL and RouteTravelMode to DRIVE. Defaults to
/// BEST_GUESS if traffic is requested and TrafficModel is not specified.
/// - [transitPreferences] : Optional. Specifies preferences that influence
/// the route returned for TRANSIT routes. NOTE: You can only specify a
/// transitPreferences when RouteTravelMode is set to TRANSIT.
/// - [CancelToken]: Optional. A cancel token that can be used to cancel the
/// request.
Future<List<RouteMatrixEntry>> computeRouteMatrix({
  required List<RouteMatrixOrigin> origins,
  required List<RouteMatrixDestination> destinations,
  required String xGoogFieldMask,
  required String apiKey,
  TravelMode? travelMode,
  RoutingPreference? routingPreference,
  String? departureTime,
  String? arrivalTime,
  String? languageCode,
  String? regionCode,
  List<ExtraComputation>? extraComputations,
  TrafficModel? trafficModel,
  TransitPreferences? transitPreferences,
}) async {
  final http.Response response = await http.post(
    Uri.parse(
        'https://routes.googleapis.com/distanceMatrix/v2:computeRouteMatrix'),
    headers: {
      'X-Goog-Api-Key': apiKey,
      'X-Goog-FieldMask': xGoogFieldMask,
    },
    body: jsonEncode(
      {
        'origins': origins.map((o) => o.toJson()).toList(),
        'destinations': destinations.map((d) => d.toJson()).toList(),
        if (travelMode != null) 'travelMode': travelMode.toJson(),
        if (routingPreference != null)
          'routingPreference': routingPreference.toJson(),
        if (departureTime != null) 'departureTime': departureTime,
        if (arrivalTime != null) 'arrivalTime': arrivalTime,
        if (languageCode != null) 'languageCode': languageCode,
        if (regionCode != null) 'regionCode': regionCode,
        if (extraComputations != null)
          'extraComputations':
              extraComputations.map((e) => e.toJson()).toList(),
        if (trafficModel != null) 'trafficModel': trafficModel.toJson(),
        if (transitPreferences != null)
          'transitPreferences': transitPreferences.toJson(),
      },
    ),
  );

  final List<RouteMatrixEntry> routeMatrixEntries = [];
  for (final entry in jsonDecode(response.body)) {
    routeMatrixEntries.add(RouteMatrixEntry.fromJson(entry));
  }
  return routeMatrixEntries;
}
