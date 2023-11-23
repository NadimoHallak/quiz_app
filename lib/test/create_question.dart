import 'package:flutter/material.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

class _CreateQuestionState extends State<CreateQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const CircularProgressIndicator(
      //     value: 1.0,
      //   ),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("3"),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("5"),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 90,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            child: const Center(
              child: Text(
                "question question questionquestionquestion question question questionquestionquestionquestion question question question question",
              ),
            ),
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 30,
                  height: 30,
                  color: Colors.black,
                );
              },
            ),
          ),
          // Container(
          //   width: 200,
          //   height: 500,
          //   child: ListView.builder(
          //     itemBuilder: (context, index) {
          //       return Container(
          //         color: Colors.blue,
          //         child: Row(),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
