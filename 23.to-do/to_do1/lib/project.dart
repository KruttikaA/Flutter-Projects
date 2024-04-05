import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Project extends StatefulWidget {
  const Project({super.key});
  @override
  State createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int count = 0;
  List<int> digitlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To do list",
          style: GoogleFonts.quicksand(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
          itemCount: digitlist.length,
          itemBuilder: (context, index) {
            return Column(children:[
            Container(
              margin: EdgeInsets.only(
                top: 237,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(250, 232, 232, 1),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                  Container(
                  
                    width: 52,
                    height: 52,
                    margin: EdgeInsets.only(
                      top: 123,
                      left: 25,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //child: Text(
              //   "${digitlist[index]}",
              //),
           ],
              ),
            ),
            const SizedBox(height: 15,),
            ],
            );
          }
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            digitlist.add(count);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
