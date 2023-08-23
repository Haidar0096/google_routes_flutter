/// Provides data about a position.
class PositionData {
  final double latitude;
  final double longitude;
  final String positionName;

  PositionData({
    required this.latitude,
    required this.longitude,
    required this.positionName,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PositionData &&
          runtimeType == other.runtimeType &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          positionName == other.positionName;

  @override
  int get hashCode =>
      latitude.hashCode ^ longitude.hashCode ^ positionName.hashCode;

  @override
  String toString() =>
      'PositionData{latitude: $latitude, longitude: $longitude, positionName: $positionName}';
}
