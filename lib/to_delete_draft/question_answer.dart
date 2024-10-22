import 'package:json_annotation/json_annotation.dart';

import 'shared/enum.dart';

part 'question_answer.g.dart';

abstract class QuestionAnswer {
  final QuestionType questionType;
  final dynamic value;

  const QuestionAnswer({required this.questionType, required this.value});

  factory QuestionAnswer.fromJson(Map<String, dynamic> json) {
    switch (json['questionType']) {
      case QuestionType.textQuestion:
        return TextQuestionAnswer.fromJson(json);
      case QuestionType.imageChoiceQuestion:
        return ImageChoiceQuestionAnswer.fromJson(json);
      case QuestionType.matchingQuestion:
        return MatchingQuestionAnswer.fromJson(json);
      case QuestionType.imageTextQuestion:
        return TextImageQuestionAnswer.fromJson(json);
      default:
        throw Exception('Unsupported question type');
    }
  }

    Map<String, dynamic> toJson();
}

@JsonSerializable()
class TextQuestionAnswer extends QuestionAnswer {
  final String textAnswer;

  const TextQuestionAnswer(this.textAnswer) : super(questionType: QuestionType.textQuestion, value: textAnswer);

  factory TextQuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$TextQuestionAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TextQuestionAnswerToJson(this);
}

@JsonSerializable()
class ImageChoiceQuestionAnswer extends QuestionAnswer {
  final String imageAnswer;

  const ImageChoiceQuestionAnswer(this.imageAnswer) : super(questionType: QuestionType.imageChoiceQuestion, value: imageAnswer);

  factory ImageChoiceQuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$ImageChoiceQuestionAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ImageChoiceQuestionAnswerToJson(this);
}

@JsonSerializable()
class MatchingQuestionAnswer extends QuestionAnswer {
  final List<String> matchingAnswer;

  const MatchingQuestionAnswer(this.matchingAnswer) : super(questionType: QuestionType.matchingQuestion, value: matchingAnswer);

  factory MatchingQuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$MatchingQuestionAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MatchingQuestionAnswerToJson(this);
}

@JsonSerializable()
class TextImageQuestionAnswer extends QuestionAnswer {
  final String textAnswer;

  const TextImageQuestionAnswer(this.textAnswer) : super(questionType: QuestionType.imageTextQuestion, value: textAnswer);

  factory TextImageQuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$TextImageQuestionAnswerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TextImageQuestionAnswerToJson(this);
}