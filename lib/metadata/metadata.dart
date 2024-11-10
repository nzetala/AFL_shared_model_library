import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  final DateTime createdAt;
  final String creator;

  @JsonKey(toJson: _changedHistoryToJson)
  final List<ChangedAction>? changedHistory;

  const Metadata({
    required this.creator,
    required this.createdAt,
    this.changedHistory,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  static List<Map<String, dynamic>> _changedHistoryToJson(
      List<ChangedAction>? changedHistoryList) {
    if (changedHistoryList == null) return [];
    return changedHistoryList
        .map((changedHistory) => changedHistory.toJson())
        .toList();
  }

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

@JsonSerializable()
class ChangedAction {
  final String author;
  final DateTime updatedAt;
  final Map<String, String> changes;

  const ChangedAction({
    required this.author,
    required this.updatedAt,
    required this.changes,
  });

  factory ChangedAction.fromJson(Map<String, dynamic> json) =>
      _$ChangedActionFromJson(json);

  Map<String, dynamic> toJson() => _$ChangedActionToJson(this);
}

Map<String, dynamic> metadataToJson(Metadata? courseMetaData) {
  if (courseMetaData == null) return {};
  return courseMetaData.toJson();
}

@JsonSerializable()
class AudioMetadata {
  final DateTime createdAt;
  final String? creator;
  final String? courseId;
  final String? wordId;
  final String wordText;

  const AudioMetadata(
      {this.creator,
      required this.createdAt,
      this.courseId,
      this.wordId,
      required this.wordText});

  factory AudioMetadata.fromJson(Map<String, dynamic> json) =>
      _$AudioMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$AudioMetadataToJson(this);
}
