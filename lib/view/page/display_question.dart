import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/model/response/question_model.dart';
import 'package:flutter_demo/service/display_q_serv.dart';
import 'package:flutter_demo/view/widget/circle_timer.dart';
import 'package:flutter_demo/view/widget/question_card.dart';

class DisplayOneQuestion extends StatelessWidget {
  DisplayOneQuestion({super.key, required this.id});

  String id;
  String? value = '';
  bool right = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: DisplayQuestionServ().getOneQuestion(id),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              dynamic temp = snapshot.data;
              print(temp);
              QuestionModel question = temp;

              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFFF3BD6B),
                      Color(0xFF8D376F),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 120,
                            left: MediaQuery.of(context).size.width / 10,
                            child: QuestionCard(question: question),
                          ),
                          Positioned(
                            left: 160,
                            top: 85,
                            child: StatefulBuilder(
                              builder: (context, StateSetter setState) {
                                return const CircleTimer();
                              },
                            ),
                          ),
                          Positioned(
                            left: 170,
                            top: 95,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: const CircularProgressIndicator(
                                value: 0.7,
                                color: Color(0xFF8D376F),
                                strokeCap: StrokeCap.round,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return ListView.separated(
                            itemBuilder: (BuildContext context, int index) {
                              String rightAnswer = '';
                              if (question.answers[index].isCorrect) {
                                rightAnswer = question.answers[index].answer;
                              }
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                child: Container(
                                  // height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: RadioListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    selected: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    title: Text(
                                      question.answers[index].answer,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF8D376F)),
                                    ),
                                    value: question.answers[index].answer,
                                    activeColor:
                                        right ? Colors.green : Colors.red,
                                   
                                    selectedTileColor:
                                        right ? Colors.green : Colors.red,
                                    groupValue: value,
                                    onChanged: (val) {
                                      setState(() {
                                        value = val;
                                        if (rightAnswer == value) {
                                          right = true;
                                          
                                          
                                        } else {
                                          right = false;
                                        }
                                      });
                                      value = val;
                                    },
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(
                              height: 20,
                            ),
                            itemCount: question.answers.length,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text("Error"),
              );
            }
          }),
    );
  }
}
