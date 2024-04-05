import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  loadAsset() async {
    return await rootBundle.loadString("assets/images/k.jpeg");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Portfolio",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 68, 211)),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Text("Next"),
      ),
      body: /*Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Color.fromARGB(255, 216, 249, 119),
              Color.fromARGB(223, 245, 172, 217),
              // Color.fromARGB(255, 46, 131, 49),
            ])),
        child:*/
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (_counter >= 0)
              ? Text(
                  "Name:Kruttika Devendra Atre",
                )
              : Text(
                  "",
                ),
          (_counter >= 1)
              ? Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(20),
                  child: Image.asset(
                    " assets/images/k.jpeg",
                  ))
              : Container(),
          (_counter >= 2)
              ? Text(
                  "College:Sinhgad Institute od technology and science",
                )
              : Text(
                  "",
                ),
          (_counter >= 3)
              ? Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://www.campusoption.com/images/colleges/logos/27_01_17_085233_logo.jpg",
                  ),
                )
              : Container(),
          (_counter >= 4)
              ? Text(
                  "Dream Company:Amazon",
                )
              : Text(
                  "",
                ),
          (_counter >= 5)
              ? Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(
                    20,
                  ),
                  color: Colors.white,
                  child: Image.network(
                    "https://i.pinimg.com/736x/0a/06/60/0a06600cc3cedeb49280b54114c88ce6.jpg",
                  ))
              : Container(),
        ],
      ),
      //),
    );
  }
}
