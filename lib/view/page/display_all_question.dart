import 'package:flutter/material.dart';
import 'package:flutter_demo/model/response/question_model.dart';
import 'package:flutter_demo/service/display_q_serv.dart';
import 'package:flutter_demo/view/page/display_question.dart';
import 'package:flutter_demo/view/widget/question_tile_all.dart';

class DisplayAllQuestion extends StatelessWidget {
  const DisplayAllQuestion({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8D376F),
      body: FutureBuilder(
        future: DisplayQuestionServ().getAllQuestion(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            dynamic temp = snapshot.data;
            List<QuestionModel> questions = temp as List<QuestionModel>;
            // print(temp);
            if (temp.isEmpty) {
              return const Center(
                child: Text('Empty'),
              );
            } else {
              return ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 7),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DisplayOneQuestion(
                              id: questions[index].id,
                            ),
                          ),
                        );
                      },
                      child: QuestionTile(
                        question: questions[index].question,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 4,
                ),
                itemCount: questions.length,
              );
            }
          } else {
            print(snapshot.error);
            return LinearProgressIndicator();
          }
        },
      ),
    );
  }
}
