import 'package:dio/dio.dart';
import 'package:flutter_demo/model/base/answer_model.dart';
import 'package:flutter_demo/model/request/create_question_model.dart';
import 'package:flutter_demo/model/response/question_model.dart';
import 'package:flutter_demo/service/question_service.dart';

class DisplayQuestionServ extends QuestionService {
  @override
  Future<QuestionModel> getOneQuestion(String id) async {
    Response response = await dio.get("$baseUrl/$id");
    dynamic temp = response.data;
    print(response);

    QuestionModel question = QuestionModel.fromMap(temp);
    print("nadim");
    print(question);
    if (response.statusCode == 200) {
      // print(object)
      if (question.answers.isEmpty) {
        return QuestionModel(
          question: "empty",
          availabileTime: 13215632,
          author: "empty",
          answers: [
            AnswerModel(answer: "empty", isCorrect: false),
            AnswerModel(answer: "empty", isCorrect: false),
            AnswerModel(answer: "empty", isCorrect: false),
            AnswerModel(answer: "empty", isCorrect: false),
          ],
          createdAt: 1546132,
          id: id,
        );
      } else {
        return question;
      }
    } else {
      return QuestionModel(
        question: "empty",
        availabileTime: 13215632,
        author: "empty",
        answers: [
          AnswerModel(answer: "empty", isCorrect: false),
          AnswerModel(answer: "empty", isCorrect: false),
          AnswerModel(answer: "empty", isCorrect: false),
          AnswerModel(answer: "empty", isCorrect: false),
        ],
        createdAt: 1546132,
        id: id,
      );
    }
  }

  @override
  Future<List<QuestionModel>> getAllQuestion() async {
    Response response = await dio.get(baseUrl);
    dynamic temp = response.data;

    List<QuestionModel> allQuestion = List.generate(
      temp.length,
      (index) => QuestionModel.fromMap(temp[index]),
    );
    // print(allQuestion[0].question);
    if (response.statusCode == 200) {
      return allQuestion;
    } else
      return [];
  }

  @override
  createNewQuestion(CreateQuestionModel newQestion) {
    // TODO: implement createNewQuestion
    throw UnimplementedError();
  }

  @override
  deleteQuestion(String id) async {
    Response response = await dio.delete(baseUrl + id);
  }

  @override
  updateOldQuestion(String id, CreateQuestionModel newQestion) {
    // TODO: implement updateOldQuestion
    throw UnimplementedError();
  }
}
