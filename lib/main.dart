import 'package:flutter/material.dart';
import 'package:flutter_demo/test/create_question.dart';
import 'package:flutter_demo/view/page/display_all_question.dart';
import 'package:flutter_demo/view/page/display_question.dart';
import 'package:flutter_demo/view/page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CreateQuestion(),
    );
  }
}
