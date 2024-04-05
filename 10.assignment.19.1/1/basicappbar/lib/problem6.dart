import 'package:flutter/material.dart';

class Problem6 extends StatelessWidget {
  const Problem6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Containers",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(color: Colors.amber, height: 200, width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 255, 7, 164),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 90, 7, 255),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 7, 255, 251),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 45, 98, 111),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 180, 6, 6),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: const Color.fromARGB(255, 7, 255, 152),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 201, 87, 157),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: const Color.fromARGB(255, 238, 255, 7),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromARGB(255, 197, 7, 255),
                  height: 200,
                  width: 200),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
