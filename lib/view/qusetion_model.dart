import 'dart:convert';

import 'package:flutter/foundation.dart';

class Question {
  String question;
  num time;
  List<AnswerModel> answers;
  Question({
    required this.question,
    required this.time,
    required this.answers,
  });

  Question copyWith({
    String? question,
    num? time,
    List<AnswerModel>? answers,
  }) {
    return Question(
      question: question ?? this.question,
      time: time ?? this.time,
      answers: answers ?? this.answers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'question': question,
      'time': time,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      question: map['question'] ?? '',
      time: map['time'] ?? 0,
      answers: List<AnswerModel>.from(
          map['answers']?.map((x) => AnswerModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));

  @override
  String toString() =>
      'Question(question: $question, time: $time, answers: $answers)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Question &&
        other.question == question &&
        other.time == time &&
        listEquals(other.answers, answers);
  }

  @override
  int get hashCode => question.hashCode ^ time.hashCode ^ answers.hashCode;
}

class AnswerModel {
  String answer;
  bool isCorrect;
  AnswerModel({
    required this.answer,
    required this.isCorrect,
  });

  AnswerModel copyWith({
    String? answer,
    bool? isCorrect,
  }) {
    return AnswerModel(
      answer: answer ?? this.answer,
      isCorrect: isCorrect ?? this.isCorrect,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'answer': answer,
      'isCorrect': isCorrect,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      answer: map['answer'] ?? '',
      isCorrect: map['isCorrect'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));

  @override
  String toString() => 'AnswerModel(answer: $answer, isCorrect: $isCorrect)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AnswerModel &&
        other.answer == answer &&
        other.isCorrect == isCorrect;
  }

  @override
  int get hashCode => answer.hashCode ^ isCorrect.hashCode;
}
