import 'package:flutter/material.dart';

class QuestionTile extends StatelessWidget {
  QuestionTile({super.key, required this.question});

  String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.maxFinite,
      height: 90,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFFDA8BD9),
            Color(0xFFF3BD6B),
          ],
        ),
      ),
      child: Center(
        child: Text(
          question,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 15, 15, 15)),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
