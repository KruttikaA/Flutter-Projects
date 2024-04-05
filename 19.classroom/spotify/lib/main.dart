import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Google Classroom",
          style: TextStyle(
            color: Color.fromARGB(255, 98, 96, 96),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          const Icon(
            Icons.more_vert,
            color: Color.fromARGB(255, 117, 114, 114),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/1.jpg",
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "SPPU_GAD2_Offline 2023",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/3.jpg",
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "TE_COMP_AY_2023-24",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 175,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/2.jpg",
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "SE_COMP_SE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 255,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/1.jpg",
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "SE_COMP_MP",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 249,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/2.jpg",
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "SE_COMP_PPL",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 243,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/3.jpg",
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "SE_COMP_BCS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 242,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
