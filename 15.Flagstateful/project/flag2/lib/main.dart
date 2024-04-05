import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Project());
  }
}

class Project extends StatefulWidget {
  const Project({super.key});
  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int _counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flag",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Text("Add"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Color.fromARGB(255, 238, 170, 68),
              Colors.white,
              Color.fromARGB(255, 46, 131, 49),
            ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (_counter >= 0)
                ? Container(
                    alignment: Alignment.center,
                    height: 500,
                    width: 12,
                    color: Colors.brown,
                  )
                : Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                (_counter >= 1)
                    ? Container(
                        height: 80,
                        width: 350,
                        color: Colors.orange,
                      )
                    : Container(),
                (_counter >= 2)
                    ? Container(
                        height: 80,
                        width: 350,
                        color: Colors.white,
                        child: (_counter >= 3)
                            ? Image.network(
                                "https://t4.ftcdn.net/jpg/04/23/00/41/360_F_423004103_l0B2QF4BMoOS9BkqBvdbPtZz7pRDxL4Y.jpg",
                              )
                            : Container(),
                      )
                    : Container(),
                (_counter >= 4)
                    ? Container(
                        height: 80,
                        width: 350,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
