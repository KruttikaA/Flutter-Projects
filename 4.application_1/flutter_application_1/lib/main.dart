import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("core2web"),
          ), //AppBar
          body: const Center(
            child: Text("core2web"),
          ) //center
          ), //scffold
    ); //MaterialApp
  }
}
