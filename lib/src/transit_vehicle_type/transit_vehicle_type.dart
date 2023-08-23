import 'package:json_annotation/json_annotation.dart';

part 'transit_vehicle_type.g.dart';

/// The type of vehicles for transit routes.
@JsonEnum(alwaysCreate: true)
enum TransitVehicleType {
  /// Unused.
  @JsonValue('TRANSIT_VEHICLE_TYPE_UNSPECIFIED')
  transitVehicleTypeUnspecified,

  /// Bus.
  @JsonValue('BUS')
  bus,

  /// A vehicle that operates on a cable, usually on the ground. Aerial cable
  /// cars may be of the type GONDOLA_LIFT.
  @JsonValue('CABLE_CAR')
  cableCar,

  /// Commuter rail.
  @JsonValue('COMMUTER_TRAIN')
  commuterTrain,

  /// Ferry.
  @JsonValue('FERRY')
  ferry,

  /// A vehicle that is pulled up a steep incline by a cable. A Funicular
  /// typically consists of two cars, with each car acting as a counterweight
  /// for the other.
  @JsonValue('FUNICULAR')
  funicular,

  /// An aerial cable car.
  @JsonValue('GONDOLA_LIFT')
  gondolaLift,

  /// Heavy rail.
  @JsonValue('HEAVY_RAIL')
  heavyRail,

  /// High speed train.
  @JsonValue('HIGH_SPEED_TRAIN')
  highSpeedTrain,

  /// Intercity bus.
  @JsonValue('INTERCITY_BUS')
  intercityBus,

  /// Long distance train.
  @JsonValue('LONG_DISTANCE_TRAIN')
  longDistanceTrain,

  /// Light rail transit.
  @JsonValue('METRO_RAIL')
  metroRail,

  /// Monorail.
  @JsonValue('MONORAIL')
  monorail,

  /// All other vehicles.
  @JsonValue('OTHER')
  other,

  /// Rail.
  @JsonValue('RAIL')
  rail,

  /// Share taxi is a kind of bus with the ability to drop off and pick up
  /// passengers anywhere on its route.
  @JsonValue('SHARE_TAXI')
  shareTaxi,

  /// Underground light rail.
  @JsonValue('SUBWAY')
  subway,

  /// Above ground light rail.
  @JsonValue('TRAM')
  tram,

  /// Trolleybus.
  @JsonValue('TROLLEYBUS')
  trolleybus;

  String? toJson() => _$TransitVehicleTypeEnumMap[this];
}
