import 'package:google_routes_flutter/src/maneuver/maneuver.dart';
import 'package:json_annotation/json_annotation.dart';

part 'navigation_instruction.g.dart';

/// Encapsulates navigation instructions for a RouteLegStep
@JsonSerializable()
class NavigationInstruction {
  /// Encapsulates the navigation instructions for the current step
  /// (e.g., turn left, merge, straight, etc.). This field determines which
  /// icon to display.
  final Maneuver? maneuver;

  /// Instructions for navigating this step.
  final String? instructions;

  NavigationInstruction({
    this.maneuver,
    this.instructions,
  });

  factory NavigationInstruction.fromJson(Map<String, dynamic> json) =>
      _$NavigationInstructionFromJson(json);

  Map<String, dynamic> toJson() => _$NavigationInstructionToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NavigationInstruction &&
          runtimeType == other.runtimeType &&
          maneuver == other.maneuver &&
          instructions == other.instructions;

  @override
  int get hashCode => maneuver.hashCode ^ instructions.hashCode;

  @override
  String toString() =>
      'NavigationInstruction{maneuver: $maneuver, instructions: $instructions}';
}
