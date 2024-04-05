import 'package:flutter/material.dart';

class Problem8 extends StatelessWidget {
  const Problem8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Padding und Margin",
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Image.network(
              "https://platedcravings.com/wp-content/uploads/2017/12/Apple-Strudel-Recipe-Plated-Cravings-1-2.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
