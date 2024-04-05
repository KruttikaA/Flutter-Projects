import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 1")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.purple,
                    offset: Offset(30, 30),
                    blurRadius: 8),
                BoxShadow(
                    color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
                BoxShadow(
                    color: Colors.green, offset: Offset(10, 10), blurRadius: 8),
              ]),
        ),
      ),
    );
  }
}
