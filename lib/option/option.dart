import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../to_delete_draft/question_answer.dart';
import '../to_delete_draft/question_choices.dart';
import 'listen_and_select_question.dart';

part '../question.g.dart';

abstract class Question {
  final String questionId;
  final QuestionType questionType;

  @JsonKey(toJson: _optionToJson)
  final QuestionOption? option;

  @JsonKey(toJson: _answerToJson)
  final QuestionAnswer correctAnswer;

  const Question(
      {required this.questionId,
      required this.questionType,
      required this.correctAnswer,
      required this.option});

  factory Question.fromJson(Map<String, dynamic> json) {
    switch (QuestionTypeExtension.fromString(json['questionType'])) {
      case QuestionType.listenAndSelect:
        return ListenAndSelectQuestion.fromJson(json);
      case QuestionType.translateWord:
        return TranslateWordQuestion.fromJson(json);
      case QuestionType.translateSentence:
        return TranslateSentenceQuestion.fromJson(json);
      case QuestionType.reverseTranslateSentence:
        return ReverseTranslateSentenceQuestion.fromJson(json);
      case QuestionType.listenAndIdentify:
        return ListenAndIdentifyQuestion.fromJson(json);
      case QuestionType.fillInTheBlanks:
        return FillInTheBlanksQuestion.fromJson(json);
      case QuestionType.matchAudioToImage:
        return MatchAudioToImageQuestion.fromJson(json);
      case QuestionType.matchPairs:
        return MatchPairsQuestion.fromJson(json);
      case QuestionType.translateFromImage:
        return TranslateFromImageQuestion.fromJson(json);
      case QuestionType.userTranslateSentence:
        return UserTranslateSentenceQuestion.fromJson(json);
      case QuestionType.writeFromAudio:
        return WriteFromAudioQuestion.fromJson(json);
      default:
        throw Exception('Unsupported question type');
    }
  }

  Map<String, dynamic> toJson();

  static Map<String, dynamic> _answerToJson(QuestionAnswer answer) {
    return answer.toJson();
  }

  static Map<String, dynamic> _optionToJson(QuestionOption choices) {
    return choices.toJson();
  }
}