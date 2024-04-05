import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({super.key});
  @override
  State createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  int count = 0;
  List<int> digitlist = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ListView Builder Demo"),
        ),
        body: ListView.builder(
            itemCount: digitlist.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amberAccent,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Text(
                  "${digitlist[index]}",
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              digitlist.add(count);
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
