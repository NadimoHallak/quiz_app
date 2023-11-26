import 'package:flutter/material.dart';
import 'package:quiz_app/view/qusetion_model.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

Question question = Question(
  question: "nadim nadim nadim nadim nadim nadim nadim nadimnadim nadim",
  time: 20,
  answers: [
    AnswerModel(answer: "answer", isCorrect: false),
    AnswerModel(answer: "nadim", isCorrect: true),
    AnswerModel(answer: "yamen", isCorrect: false),
    AnswerModel(answer: "saeed", isCorrect: false),
  ],
);

class _CreateQuestionState extends State<CreateQuestion> {
  int textFieldNum = 0;
  List<TextEditingController> textEditingControllerList = [];
  List<AnswerModel> answers = [];
  TextEditingController questionController = TextEditingController();
  TextEditingController questionTime = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              for (var i = 0; i < textEditingControllerList.length; i++) {
                textEditingControllerList[i].text = " ";
                answers[i].answer = textEditingControllerList[i].text;
              }
              question = Question(
                question: questionController.text,
                time: num.parse(questionTime.text),
                answers: answers,
              );
            },
            child: const Icon(
              Icons.navigate_next_sharp,
              size: 35,
              color: Colors.purple,
            ),
          )
        ],
        title: const Text(
          "Create a questions",
          style: TextStyle(
            color: Color.fromARGB(255, 185, 106, 199),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Text("")
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 20,
            ),
            child: TextField(
              controller: questionController,
              decoration: const InputDecoration(
                labelText: "Enter a question",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 20,
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              controller: questionTime,
              decoration: const InputDecoration(
                labelText: "Enter a time",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: textEditingControllerList.length,
              itemBuilder: (context, index) {
                print("index " + index.toString());
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  child: SizedBox(
                    height: 70,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: textEditingControllerList[index],
                      decoration: InputDecoration(
                        prefix: Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        // hintText: "${index + 1}",
                        labelText: "Answer ${index + 1}",
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: InkWell(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration:
              const BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
        onTap: () {
          setState(() {
            textEditingControllerList.add(TextEditingController());
            print(textEditingControllerList[0].text);
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
