import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int cnt1 = 0;
  int cnt2 = 0;

  Color box1() {
    if (cnt1 == 0) {
      return Colors.black;
    } else if (cnt1 == 1) {
      return Colors.blue;
    } else if (cnt1 == 2) {
      return Color.fromARGB(255, 193, 42, 170);
    } else {
      cnt1 = 0;
      return Colors.black;
    }
  }

  Color box2() {
    if (cnt2 == 0) {
      return Colors.black;
    } else if (cnt2 == 1) {
      return const Color.fromARGB(255, 103, 33, 243);
    } else if (cnt2 == 2) {
      return Color.fromARGB(255, 5, 214, 222);
    } else {
      cnt2 = 0;
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Box1
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cnt1++;
                      });
                    },
                    child: const Text("Change"),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        cnt2++;
                      });
                    },
                    child: const Text("change"),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
