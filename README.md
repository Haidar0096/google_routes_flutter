This package is a dart interface to the [google routes api](https://developers.google.com/maps/documentation/routes).
It allows you to get information about routes between locations, such as distance, travel time, etc.

## Features
- `computeRoute`
- `computeRouteMatrix`

## Getting started
Just add the package to your `pubspec.yaml` file:
```yaml
dart pub add google_routes_flutter
```

## Usage
### `computeRoute`
Computes a route between 2 points.
```dart
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
```

### `computeRouteMatrix`
Computes a route between each origin/destination pair of the provided origins and destinations lists
```dart
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
```

# Contributing

- Feel free to open an issue if you have any problem or suggestion.
- Feel free to open a pull request if you want to contribute.

# Want to say thanks?
[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/haidarmehsen)

