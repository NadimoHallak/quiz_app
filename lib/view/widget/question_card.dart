import 'package:flutter/material.dart';
import 'package:flutter_demo/model/response/question_model.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({super.key, required this.question});
  QuestionModel question;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: 281,
      height: 170,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(1.00, -0.02),
          end: Alignment(-1, 0.02),
          colors: [Color(0xFFDA8BD9), Color(0xFFF3BD6B)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      value: 0.7,
                      color: Colors.green,
                      backgroundColor: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(3)),

                      // value: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    child: LinearProgressIndicator(
                      value: 0.7,
                      color: Colors.red,
                      backgroundColor: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(3)),

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
    );
  }
}
