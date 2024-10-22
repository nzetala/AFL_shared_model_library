import 'package:json_annotation/json_annotation.dart';

import 'shared/enum.dart';

part 'question_choices.g.dart';

abstract class QuestionChoices {
  final QuestionType questionType;
  final dynamic value;

  const QuestionChoices({required this.questionType, required this.value});

  factory QuestionChoices.fromJson(Map<String, dynamic> json) {
    switch (json['questionType']) {
      case QuestionType.textQuestion:
        return TextQuestionChoices.fromJson(json);
      case QuestionType.imageChoiceQuestion:
        return ImageChoiceQuestionChoices.fromJson(json);
      case QuestionType.matchingQuestion:
        return MatchingQuestionChoices.fromJson(json);
      case QuestionType.imageTextQuestion:
        return TextImageQuestionChoices.fromJson(json);
      default:
        throw Exception('Unsupported question type');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class TextQuestionChoices extends QuestionChoices {
  final List<String> textChoices;

  const TextQuestionChoices(this.textChoices)
      : super(questionType: QuestionType.textQuestion, value: textChoices);

  factory TextQuestionChoices.fromJson(Map<String, dynamic> json) =>
      _$TextQuestionChoicesFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TextQuestionChoicesToJson(this);
}

@JsonSerializable()
class ImageChoiceQuestionChoices extends QuestionChoices {
  final Map<String, String> imageTextChoices;

  const ImageChoiceQuestionChoices(this.imageTextChoices)
      : super(
            questionType: QuestionType.imageChoiceQuestion,
            value: imageTextChoices);

  factory ImageChoiceQuestionChoices.fromJson(Map<String, dynamic> json) =>
      _$ImageChoiceQuestionChoicesFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ImageChoiceQuestionChoicesToJson(this);
}

@JsonSerializable()
class MatchingQuestionChoices extends QuestionChoices {
  final List<String> matchingChoices;

  const MatchingQuestionChoices(this.matchingChoices)
      : super(
            questionType: QuestionType.matchingQuestion,
            value: matchingChoices);

  factory MatchingQuestionChoices.fromJson(Map<String, dynamic> json) =>
      _$MatchingQuestionChoicesFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MatchingQuestionChoicesToJson(this);
}

@JsonSerializable()
class TextImageQuestionChoices extends QuestionChoices {
  final List<String> textChoices;

  const TextImageQuestionChoices(this.textChoices)
      : super(questionType: QuestionType.imageTextQuestion, value: textChoices);

  factory TextImageQuestionChoices.fromJson(Map<String, dynamic> json) =>
      _$TextImageQuestionChoicesFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TextImageQuestionChoicesToJson(this);
}
