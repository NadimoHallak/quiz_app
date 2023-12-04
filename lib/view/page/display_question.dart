import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/model/response/question_model.dart';
import 'package:flutter_demo/service/display_q_serv.dart';

class DisplayOneQuestion extends StatelessWidget {
  DisplayOneQuestion({super.key, required this.id});

  String id;
  String? value = '';
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
                            left: MediaQuery.of(context).size.width / 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              width: 281,
                              height: 170,
                              decoration: ShapeDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(1.00, -0.02),
                                  end: Alignment(-1, 0.02),
                                  colors: [
                                    Color(0xFFDA8BD9),
                                    Color(0xFFF3BD6B)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text("03"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 40,
                                            child: LinearProgressIndicator(
                                                // value: 1.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 40,
                                            child: LinearProgressIndicator(
                                                // value: 1.0,
                                                ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("03"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    question.question,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return ListView.separated(
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: Container(
                                // height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: RadioListTile(
                                  selected: true,
                                  contentPadding: const EdgeInsets.all(5),
                                  title: Text(
                                    question.answers[index].answer,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  value: question.answers[index].answer,
                                  groupValue: value,
                                  onChanged: (val) {
                                    setState(() {
                                      value = val;
                                    });

                                    value = val;
                                  },
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            height: 20,
                          ),
                          itemCount: question.answers.length,
                        );
                      }),
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
