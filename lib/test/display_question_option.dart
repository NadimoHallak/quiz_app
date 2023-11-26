import 'package:flutter/material.dart';
import 'package:quiz_app/test/create_question.dart';
import 'package:quiz_app/test/winnwer.dart';

class DisplayQuestion extends StatefulWidget {
  const DisplayQuestion({super.key});

  @override
  State<DisplayQuestion> createState() => _DisplayQuestionState();
}

class _DisplayQuestionState extends State<DisplayQuestion> {
  String? answer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  textAlign: TextAlign.center,
                  question.question,
                  style: const TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
              // color: Colors.blue,
              height: 300,
              width: 400,
              child: ListView.builder(
                  itemCount: question.answers.length,
                  itemBuilder: (context, index) {
                    return RadioListTile(
                      title: Text(question.answers[index].answer),
                      value: question.answers[index].answer,
                      groupValue: answer,
                      onChanged: (val) {
                        setState(() {
                          answer = val;
                        });
                      },
                    );
                  }),
            ),

            InkWell(
              onTap: () {
                checkAnswer(context);
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                )),
              ),
            )
            // MaterialButton(
            //   onPressed: checkAnswer(context),
            //   color: Colors.purple,
            // )
          ],
        ),
      ),
    );
  }

  checkAnswer(BuildContext context) {
    String? a;
    for (var i = 0; i < question.answers.length; i++) {
      if (question.answers[i].isCorrect) {
        a = question.answers[i].answer;
      }
    }
    if (answer == a) {
      print("Winner");
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Winner()),
      );
    }
  }
}
