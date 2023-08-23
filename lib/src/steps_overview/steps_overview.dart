import 'package:google_routes_flutter/src/multi_modal_segment/multi_modal_segment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'steps_overview.g.dart';

/// Provides overview information about a list of RouteLegSteps.
@JsonSerializable()
class StepsOverview {
  /// Summarized information about different multi-modal segments of the
  /// RouteLeg.steps. This field is not populated if the RouteLeg does not
  /// contain any multi-modal segments in the steps.
  final List<MultiModalSegment>? multiModalSegments;

  StepsOverview({
    this.multiModalSegments,
  });

  factory StepsOverview.fromJson(Map<String, dynamic> json) =>
      _$StepsOverviewFromJson(json);

  Map<String, dynamic> toJson() => _$StepsOverviewToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StepsOverview &&
          runtimeType == other.runtimeType &&
          multiModalSegments == other.multiModalSegments;

  @override
  int get hashCode => multiModalSegments.hashCode;

  @override
  String toString() => 'StepsOverview{multiModalSegments: $multiModalSegments}';
}
