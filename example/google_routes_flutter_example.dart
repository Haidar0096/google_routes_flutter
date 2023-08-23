import 'package:google_routes_flutter/google_routes_flutter.dart';

Future<void> main() async {
  try {
    var computeRoutesResult = await computeRoute(
      origin: Waypoint(
        location: Location(
          latLng: LatLng(
            latitude: 33.25889341635255,
            longitude: 35.210018284644185,
          ),
        ),
      ),
      destination: Waypoint(
        location: Location(
          latLng: LatLng(
            latitude: 33.278430320176085,
            longitude: 35.216819613960894,
          ),
        ),
      ),
      xGoogFieldMask: 'routes.distanceMeters,routes.routeLabels',
      apiKey: 'YOUR_API_KEY',
    );

    var computeRouteMatrixResult = await computeRouteMatrix(
      origins: [
        RouteMatrixOrigin(
          waypoint: Waypoint(
            location: Location(
              latLng: LatLng(
                latitude: 33.25889341635255,
                longitude: 35.210018284644185,
              ),
            ),
          ),
        ),
      ],
      destinations: [
        RouteMatrixDestination(
          waypoint: Waypoint(
            location: Location(
              latLng: LatLng(
                latitude: 33.278430320176085,
                longitude: 35.216819613960894,
              ),
            ),
          ),
        ),
      ],
      xGoogFieldMask: 'distanceMeters',
      apiKey: 'YOUR_API_KEY',
    );

    print(
      'API Call 1: distance is '
      '${computeRoutesResult.routes?.firstWhere(
            (route) =>
                (route.routeLabels?.contains(RouteLabel.defaultRoute) ?? false),
          ).distanceMeters}'
      ' meters',
    );

    print(
      'API Call 2: distance is '
      '${computeRouteMatrixResult.first.distanceMeters}'
      ' meters',
    );
  } catch (e) {
    print(e);
  }
}
