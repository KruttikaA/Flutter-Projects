import 'package:flutter/material.dart';
//import 'package:to_do1/login.dart';
//import 'package:to_do1/advui.dart';
import 'package:to_do1/finaltodo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ToDoApp(),
    );
  }
}
