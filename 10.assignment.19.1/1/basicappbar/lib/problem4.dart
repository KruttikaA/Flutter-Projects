import 'package:flutter/material.dart';

class Problem4 extends StatelessWidget {
  const Problem4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2web",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.amber, height: 200, width: 200),
            SizedBox(
              width: 20,
            ),
            Container(
                color: Color.fromARGB(255, 255, 7, 164),
                height: 200,
                width: 200),
          ],
        ),
      ),
    );
  }
}
