import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class Singlequestionmodel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;
  const Singlequestionmodel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  List allQuestions = [
    const Singlequestionmodel(
      question: "Java was introtduced in which year?",
      options: ["1995", "1997", "1992", "1991"],
      answerIndex: 0,
    ),
    const Singlequestionmodel(
      question: "What makes java platform independent?",
      options: [
        "Advanced programming language",
        "Java uses bytecode for execution",
        "Java uses Class compilation",
        "All of these are best answers"
      ],
      answerIndex: 1,
    ),
    const Singlequestionmodel(
      question: "Which of the following is not a java feature?",
      options: [
        "Object-oriented",
        "Use of pointers",
        "it is Portable",
        "Dynamic & Robust"
      ],
      answerIndex: 1,
    ),
    const Singlequestionmodel(
      question: "What software runs a java program on a computer?",
      options: ["JVM", "JDK", "JRE", "JIT"],
      answerIndex: 2,
    ),
    (
      question: "Byte code is the result of?",
      options: [
        "Compiling of Class file",
        "Interpreting of Java file",
        "Interpreting of Class file",
        "Compiling of Java file"
      ],
      answerIndex: 3,
    ),
  ];
  bool selected = false;
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedansind = -1;
  int correctanscount = 0;
  Color? givecolor(int buttonindex) {
    if (selectedansind != -1) {
      if (buttonindex == allQuestions[questionIndex].answerIndex) {
        return Colors.green;
      } else if (buttonindex == selectedansind) {
        return Colors.red;
      } else {
        return const Color.fromARGB(255, 244, 102, 242);
      }
    } else {
      return const Color.fromARGB(255, 224, 85, 221);
    }
  }

  void validate() {
    if (selectedansind == allQuestions[questionIndex].answerIndex) {
      correctanscount += 1;
      
    }
    if (selectedansind != -1) {
      if ((questionIndex + 1) < allQuestions.length) {
        questionIndex++;
        selectedansind = -1;

        setState(() {});
      } else {
        questionScreen = false;
        setState(() {});
      }
    } else {
      selected = true;
      setState(() {});
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        backgroundColor:const Color.fromARGB(255, 252, 208, 238),
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple, // Color.fromARGB(255, 73, 136, 13),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 65,
              child: Text(
                allQuestions[questionIndex].question,
                style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                //textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  selected = false;
                  setState(() {
                    selectedansind = 0;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(0),
                  minimumSize: const Size(360, 48),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
              child: Text(
                "A.${allQuestions[questionIndex].options[0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  selected = false;
                  setState(() {
                    selectedansind = 1;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(1),
                  minimumSize: const Size(360, 48),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
              child: Text(
                "B.${allQuestions[questionIndex].options[1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  selected = false;
                  setState(() {
                    selectedansind = 2;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(2),
                  minimumSize: const Size(360, 48),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
              child: Text(
                "C.${allQuestions[questionIndex].options[2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedansind == -1) {
                  selected = false;
                  setState(() {
                    selectedansind = 3;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: givecolor(3),
                  minimumSize: const Size(360, 48),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
              child: Text(
                "D.${allQuestions[questionIndex].options[3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: selected
                  ? const Text(
                      "Please select one option",
                      style: TextStyle(fontSize: 18,
                      color: Colors.red,),
                    )
                  : const Text(""),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validate();
          },
          backgroundColor:const Color.fromARGB(255, 151, 129, 234),
          child: const Icon(
            Icons.forward,
            
          ),
        ),
      );
    } else {
      return Scaffold(
        //backgroundColor: Color.fromARGB(255, 248, 201, 233),
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Image.network(
                "https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
                height: 455,
                width: 350,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "CONGRATULATIONS!!!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.redAccent),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "You have completed quiz !",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                  color:
                      Colors.purpleAccent, // Color.fromARGB(255, 239, 73, 128),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Your score is : ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Color.fromARGB(
                          255, 239, 73, 128), // Colors.purpleAccent,
                    ),
                  ),
                  Text(
                    "$correctanscount /${allQuestions.length}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Color.fromARGB(
                          255, 239, 73, 128), // Colors.purpleAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  selectedansind = -1;
                  questionIndex = 0;
                  correctanscount = 0;
                  questionScreen = true;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 127, 97, 211),
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  "RESTART",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
