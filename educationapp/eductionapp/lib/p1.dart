import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:intl/intl.dart';

class Edu extends StatefulWidget {
  const Edu({super.key});

  @override
  State<Edu> createState() => _EduState();
}

class _EduState extends State<Edu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
     
      body:
      Padding(padding:const EdgeInsets.only(top: 50,),
      child:       
       Column(
       
      // crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              const SizedBox(width: 15,),
              const Icon(Icons.menu,color: Colors.black,size: 40,),
              const Spacer(),
              const Icon(Icons.notifications_outlined,color: Colors.black,size: 40,),
              const SizedBox(width: 15,),
            ],
          ),

          const SizedBox(height: 10,),

          Padding(padding: const EdgeInsets.only(right: 180),
          child :Container(
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          SizedBox(
          
            child:
            Text("Welcome to new",
            style: TextStyle(fontSize: 26.98,
            fontWeight: FontWeight.w300),),
            ),
             
           const SizedBox(height: 5,),
          SizedBox(
            
            child:
            Text("Educourse",
            style: TextStyle(fontSize: 37,
            fontWeight: FontWeight.w700),),
            ),            

              ],
            ),
          
          ),
       
       ),
      
       const SizedBox(height: 15,),

      Container(
        width: 380,
        child:
      TextField(
        decoration:  InputDecoration(
          filled:true,
          fillColor: const Color.fromRGBO(255, 255, 255,1),
          suffixIcon: const Icon(Icons.search_outlined),
          hintText: "Enter your Keyword",
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          )
        ),
      ),
      ),
      const SizedBox(height: 20,),

      Expanded(child: 
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50.5),topRight: Radius.circular(50.5),
          ),
          color: const Color.fromRGBO(255, 255, 255,1),
        

        ),
        child: Padding(padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Course for you",
          style: TextStyle(fontSize:18,fontWeight: FontWeight.w500 ),
          ),
           const SizedBox(height: 10,),
        
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: 
         
          Row(children: [
          Container(
            margin: EdgeInsets.all(6),
            height: 242,
            width: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(15),bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors:[Color.fromRGBO(197, 4, 98,1),Color.fromRGBO(80, 3,112 , 1),]),
              ),
              child: Padding(padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
        child: Column(children: [
          Text("UX Designer from strach",
          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,
          color: Color.fromRGBO(255, 255, 255, 1),
          ),
          ),

          Image.asset("asset/man.png"),
        ],
        ),
            ),
          

          ),


          Container(
            height: 242,
            width: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(15),bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors:[Color.fromRGBO(0, 77, 228, 1),Color.fromRGBO(1, 47, 135, 1),]),
              ),
              child: Padding(padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
        child: Column(children: [
          Text("Design Thinking The Beginner",
          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,
          color: Color.fromRGBO(255, 255, 255, 1),
          ),
          ),

          Image.asset("asset/bulb.png"),
        ],
        ),
            ),
          

          ),          
          ],
          
        ),
         ),
       const SizedBox(height: 20,),
       const Text("Course by category"
       ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

       const SizedBox(height: 30,),

       Row(children: [
      
        
            Image.asset("asset/C-1.png"),
            const SizedBox(width: 50,),
            Image.asset("asset/C-2.png"),
            const SizedBox(width: 45,) ,
            Image.asset("asset/C-3.png"),
            const SizedBox(width: 45,) ,
            Image.asset("asset/C-4.png"),

          ],
        ),
       
        ],),
      ),
      ),
      ),
    ],),
  
      ),
    );

  }
}
