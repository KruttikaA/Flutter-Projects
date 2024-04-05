import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _Assignment3State();
}

class _Assignment3State extends State<Project> {
  int? selectedIndex = 0;
  int? pCount = 0;
  int? aCount = 0;
  int? sCount = 0;

  final List<int> list = [121, 12321, 153, 370, 1634, 145, 40585];

  void checkpalindrome() {
    pCount = 0;
    setState(() {
      for (int i = 0; i < list.length; i++) {
        int temp = list[i];
        int rev = 0;
        while (temp != 0) {
          int rem = temp % 10;
          rev = rev * 10 + rem;
          temp = (temp ~/ 10);
        }
        if (list[i] == rev) {
          pCount = pCount! + 1;
        }
      }
    });
  }

  void checkArmstrong() {
    aCount = 0;
    setState(() {
      for (int i = 0; i < list.length; i++) {
        int temp = list[i];
        int digits = list[i].toString().length;
        int total = 0;
        while (temp != 0) {
          int rem = temp % 10;
          int sum = 1;

          for (int j = 0; j < digits; j++) {
            sum = sum * rem;
          }
          total = total + sum;
          temp = (temp ~/ 10);
        }
        if (total == list[i]) {
          aCount = aCount! + 1;
        }
      }
    });
  }

  void strongnumber() {
    sCount = 0;
    setState(() {
      for (var i = 0; i < list.length; i++) {
        int finaltotal = 0;

        int temp = list[i];

        while (temp != 0) {
          int rem = temp % 10;
          int fact = 1;
          for (var j = 1; j <= rem; j++) {
            fact = fact * j;
          }
          finaltotal = finaltotal + fact;
          temp = temp ~/ 10;
        }
        if (list[i] == finaltotal) {
          sCount = sCount! + 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: checkpalindrome,
              child: const Text("Checkpalindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Count of pslindrome no in list are : $pCount"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: checkArmstrong,
              child: const Text("checkArmstrong"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Count of armstrong  no in list are : $aCount"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: strongnumber,
              child: const Text("Strong"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Count of strong no in list are : $sCount"),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pCount = 0;
                  aCount = 0;
                  sCount = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
