import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Styling")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              //color: Colors.red,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepOrange,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
