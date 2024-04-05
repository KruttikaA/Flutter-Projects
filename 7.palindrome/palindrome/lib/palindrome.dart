/*import 'package:flutter/material.dart';

class Numberop extends StatefulWidget {
  const Numberop({super.key});

  @override
  State<Numberop> createState() => _NumberopState();
}

class _NumberopState extends State<Numberop> {
  bool donepal = false;
  int countpal = 0;
  int countarm = 0;
  int countstrong = 0;
  final List<int> mylist = [121, 323, 111, 123, 456];
  int count = 0;

  void _palindromec() {
    count = 0;
    int j = mylist.length;
    for (int i = 0; i <= j - 1; i++) {
      int pal = 0;
      int val = mylist[i];
      int num = mylist[i];
      while (num != 0) {
        int rem = num % 10;
        pal = pal * 10 + rem;
        num = num ~/ 10;
      }
      if (pal == val) {
        setState(() {
          count = count + 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Palindrome,armstrong",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "click button to get ans",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$count",
            ),
            ElevatedButton(
              onPressed: _palindromec,
              child: const Text("count palindrome"),
            ),
          ],
        ),
      ),
    );
  }
}*/



