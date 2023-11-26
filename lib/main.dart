import 'package:flutter/material.dart';
import 'package:quiz_app/test/create_question.dart';
import 'package:quiz_app/test/display_question_option.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const DisplayQuestion(),
    );
  }
}
