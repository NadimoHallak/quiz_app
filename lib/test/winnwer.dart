import 'package:flutter/material.dart';
import 'package:quiz_app/test/create_question.dart';

class Winner extends StatefulWidget {
  const Winner({super.key});

  @override
  State<Winner> createState() => _WinnerState();
}

class _WinnerState extends State<Winner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Winnwer",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CreateQuestion(),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(7)),
                  child: const Center(
                    child: Text(
                      "next",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
