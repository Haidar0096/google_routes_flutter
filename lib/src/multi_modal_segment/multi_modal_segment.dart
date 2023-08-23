import 'package:google_routes_flutter/src/navigation_instruction/navigation_instruction.dart';
import 'package:google_routes_flutter/src/route_travel_mode/route_travel_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'multi_modal_segment.g.dart';

/// Provides summarized information about different multi-modal segments of the
/// RouteLeg.steps. A multi-modal segment is defined as one or more contiguous
/// RouteLegStep that have the same RouteTravelMode. This field is not populated
/// if the RouteLeg does not contain any multi-modal segments in the steps.
@JsonSerializable()
class MultiModalSegment {
  /// NavigationInstruction for the multi-modal segment.
  final NavigationInstruction? navigationInstruction;

  /// The travel mode of the multi-modal segment.
  final RouteTravelMode? travelMode;

  /// The corresponding RouteLegStep index that is the start of a multi-modal
  /// segment.
  final int? stepStartIndex;

  /// The corresponding RouteLegStep index that is the end of a multi-modal
  /// segment.
  final int? stepEndIndex;

  MultiModalSegment({
    this.navigationInstruction,
    this.travelMode,
    this.stepStartIndex,
    this.stepEndIndex,
  });

  factory MultiModalSegment.fromJson(Map<String, dynamic> json) =>
      _$MultiModalSegmentFromJson(json);

  Map<String, dynamic> toJson() => _$MultiModalSegmentToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultiModalSegment &&
          runtimeType == other.runtimeType &&
          navigationInstruction == other.navigationInstruction &&
          travelMode == other.travelMode &&
          stepStartIndex == other.stepStartIndex &&
          stepEndIndex == other.stepEndIndex;

  @override
  int get hashCode =>
      navigationInstruction.hashCode ^
      travelMode.hashCode ^
      stepStartIndex.hashCode ^
      stepEndIndex.hashCode;

  @override
  String toString() =>
      'MultiModalSegment{navigationInstruction: $navigationInstruction, travelMode: $travelMode, stepStartIndex: $stepStartIndex, stepEndIndex: $stepEndIndex}';
}
