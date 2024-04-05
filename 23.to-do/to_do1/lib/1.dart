import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pro extends StatefulWidget {
  const Pro({super.key});
  @override
  State createState() => _ProState();
}

class _ProState extends State<Pro> {
  int count = 0;
  List<int> digitlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice",
          style: GoogleFonts.quicksand(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body:Center(
        child:Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration (
            shape: BoxShape.circle,
            color: Colors.blueAccent,
            boxShadow:const [
              BoxShadow(
                color: Color.fromARGB(255, 201, 219, 36),
                offset: Offset(0, 0),
                spreadRadius: 7,
                blurRadius: 10,
                //blurStyle: BlurStyle.outer,


              ),
            
            ],
            border: Border.all(
              width: 5,
              color:const Color.fromRGBO(0,0,0,1),),

          ),
          child: Image.network("https://sp.yimg.com/ib/th?id=OIP.3tYhqCzMQnXjdvyYJZEJAAHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1",
          height: 150,
          width: 150,
          ),

        ), )

    );
  }
}
