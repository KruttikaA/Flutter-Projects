import 'package:flutter/material.dart';
import 'package:onepage/QuizApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData(
      // scaffoldBackgroundColor: Color.fromARGB(219, 237, 232, 105),
      //),
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
