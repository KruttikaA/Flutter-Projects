import 'package:flutter/material.dart';

class Problem1 extends StatelessWidget {
  const Problem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KRUTTIKA"),
        backgroundColor: Color.fromARGB(255, 30, 233, 111),
        actions: [
          const Icon(
            Icons.favorite_rounded,
            color: Color.fromARGB(255, 194, 7, 7),
          ),
          const Icon(
            Icons.add_home_rounded,
            color: Color.fromARGB(255, 194, 7, 191),
          ),
        ],
      ),
    );
  }
}
