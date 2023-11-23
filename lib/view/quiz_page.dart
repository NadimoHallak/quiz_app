import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/view/qusetion_model.dart';
import 'package:quiz_app/view/winner.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

PageController ctrl = PageController();
double rightAnswer = 0;
double badAnswer = 0;
int currentPage = 0;

class _QuizPageState extends State<QuizPage> with Methods {
  var answerTime = question[0].time;
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        // if (answerTime > 0) {
        //   answerTime--;
        // } else {
        //   answerTime = question[currentPage++].time;
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(
        //       duration: Duration(seconds: 1),
        //       content: Text('Time Out'),
        //       backgroundColor: Colors.blue,
        //     ),
        //   );
        //   if (currentPage < question.length) {
        //     ctrl.animateToPage(
        //       currentPage,
        //       duration: Duration(milliseconds: 100),
        //       curve: Curves.linear,
        //     );
        //     badAnswer++;
        //   } else {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => Home(),
        //       ),
        //     );
        //   }
        // }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
          controller: ctrl,
          itemCount: question.length,
          itemBuilder: (context, i) => SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 230,
                    decoration: const BoxDecoration(
                      color: Color(0xFFA32EC1),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 35,
                        ),
                        Icon(
                          Icons.filter_alt,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 38,
                  child: Container(
                    width: 320,
                    height: 190,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 3,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                //! circul of Time
                Positioned(
                  top: 110,
                  left: 160,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: CircularProgressIndicator(
                      strokeWidth: 6,
                      value: answerTime / question[i].time,
                      color: const Color(0xFFA32EC1),
                    ),
                  ),
                ),
                //! Time
                Positioned(
                  top: 142,
                  left: 196,
                  child: Text(
                    "$answerTime",
                    style: const TextStyle(
                      color: Color(0xFFA32EC1),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  top: 160,
                  left: 55,
                  child: SizedBox(
                    // color: Colors.red,
                    width: 90,
                    // height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$rightAnswer",
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            value: rightAnswer / question.length,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 260,
                  child: SizedBox(
                    // color: Colors.red,
                    width: 90,
                    // height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(10),
                            backgroundColor: Colors.black12,
                            color: Colors.red,
                            value: badAnswer / question.length,
                          ),
                        ),
                        Text(
                          "$badAnswer",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Positioned(
                  top: 210,
                  left: 150,
                  child: Text(
                    "Question 13/20",
                    style: TextStyle(
                      color: Color(0xFFA32EC1),
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 48,
                  child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 100,
                    // color: Colors.red,
                    child: Text(
                      question[i].question,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 380,
                  left: 45,
                  child: SizedBox(
                    width: 300,
                    height: 360,
                    // color: Colors.amber,
                    child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: const Border.fromBorderSide(
                              BorderSide(
                                width: 3,
                                color: Color(0xFFA32EC1),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                question[i].answers[index].answer,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  activeColor: const Color(0xFFA32EC1),
                                  shape: const CircleBorder(),
                                  value: isChecked[index],
                                  onChanged: (value) {
                                    // setState(() {
                                    //   isChecked[index] = value;
                                    //   checkoutAnswer(
                                    //     index: i,
                                    //     context: context,
                                    //     answerTime: answerTime,
                                    //     isCorrect: isChecked[index] ==
                                    //         question[i]
                                    //             .answers[index]
                                    //             .isCorrect,
                                    //   );

                                    //   restCheckBox(isChecked);
                                    //   answerTime = question[i].time;
                                    // });
                                  },
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

mixin Methods {
  restCheckBox(List<bool?> isChecked) {
    for (var i = 0; i < isChecked.length; i++) {
      Future.delayed(const Duration(seconds: 2));
      isChecked[i] = false;
    }
  }

  checkoutAnswer({
    required bool isCorrect,
    required BuildContext context,
    required num answerTime,
    required int index,
  }) {
    if (isCorrect) {
      answerTime = question[currentPage++].time;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 1),
          content: Text('Time Out'),
          backgroundColor: Colors.blue,
        ),
      );
      if (currentPage < question.length) {
        ctrl.animateToPage(
          currentPage,
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
        );
        rightAnswer++;
      } else {
        Future.delayed(const Duration(milliseconds: 200));
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      }
    } else {
      answerTime = question[currentPage++].time;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 1),
          content: Text('Time Out'),
          backgroundColor: Colors.blue,
        ),
      );
      if (currentPage < question.length) {
        ctrl.animateToPage(
          currentPage,
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
        );
        badAnswer++;
      } else {
        Future.delayed(const Duration(seconds: 200));

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      }
    }
  }
}
List<bool?> isChecked = [
  false,
  false,
  false,
  false,
];

List<Question> question = [
  Question(
    question: "What The greatest programming of the world",
    time: 7,
    answers: [
      AnswerModel(answer: "nadim", isCorrect: true),
      AnswerModel(answer: "Abod", isCorrect: false),
      AnswerModel(answer: "saeed", isCorrect: false),
      AnswerModel(answer: "yamen", isCorrect: false),
    ],
  ),
  Question(
    question: "How many arebian country of the world",
    time: 10,
    answers: [
      AnswerModel(answer: "50", isCorrect: false),
      AnswerModel(answer: "58", isCorrect: false),
      AnswerModel(answer: "70", isCorrect: false),
      AnswerModel(answer: "56", isCorrect: true),
    ],
  ),
  Question(
    question: "how many buttons in the keybord",
    time: 10,
    answers: [
      AnswerModel(answer: "102", isCorrect: false),
      AnswerModel(answer: "85", isCorrect: false),
      AnswerModel(answer: "81", isCorrect: true),
      AnswerModel(answer: "90", isCorrect: false),
    ],
  ),
  Question(
    question: "how many fingers with cats",
    time: 10,
    answers: [
      AnswerModel(answer: "8", isCorrect: false),
      AnswerModel(answer: "16", isCorrect: true),
      AnswerModel(answer: "20", isCorrect: false),
      AnswerModel(answer: "25", isCorrect: false),
    ],
  ),
];
