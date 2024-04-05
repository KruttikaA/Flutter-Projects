import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI extends StatefulWidget {
  const UI({super.key});
  @override
  State createState() => _UIState();
}

class _UIState extends State<UI> {
  int count = 0;
  List dynamic=[];
  List colorlist = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView.builder(
          itemCount: dynamic.length,
          itemBuilder: (context, index) {
            return
        Container(
          height: 112,
          width: 330,
         padding:const EdgeInsets.all(10),
         margin:const EdgeInsets.all(15),
          decoration:  BoxDecoration(
            color: colorlist[index%(colorlist.length)],
            borderRadius:const  BorderRadius.all(Radius.circular(10)),
            boxShadow:const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(0, 10),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: 
              
              [
                Row(
                  children: [
                    

                 Container(
                    width: 52,
                    height: 52,
                  //margin: EdgeInsets.all(5),
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  )  ,  
                  const SizedBox(width: 10,),

                 Expanded(child: 
                 Column(

                    children: [
                      //const SizedBox(width: 5,),
                      
                        SizedBox(
                            height: 15,
                            width: 243,
                            child: Text("Lorem Ipsum is simply setting industry. ",
                                      style: GoogleFonts.quicksand(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                     fontSize: 12,
                                      fontWeight: FontWeight.w700,
                     ),),
                          ),
                        
                          const SizedBox(height: 10,),
                      
                            SizedBox(
                            height: 44,
                            width: 243,
                            child: Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                                      style: GoogleFonts.quicksand(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                     fontSize: 10,
                                      fontWeight: FontWeight.w500,
                     ),),
                          
                          
                        
                      ),
                    ],
                  )  ,  
                 ),     

             ],
           ),
           const SizedBox(height: 8,),
           Expanded(child: 
           Row(children: [
                            SizedBox(
                            height: 13,
                            width:58,
                            child: Text("10 July 2023 ",
                                      style: GoogleFonts.quicksand(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                     fontSize: 10,
                                      fontWeight: FontWeight.w500,
                     ),),
                     
                          
                          
                        
                      ),
                      const Spacer(),
                      Icon(Icons.edit,color: const Color.fromRGBO(0, 139, 148, 1),),
                      const SizedBox(width: 3,),
                      Icon(Icons.delete,color: const Color.fromRGBO(0, 139, 148, 1),),


           ],),),

              ],
          ),
        
           );
          
          
  }
  ),
      ),
     
           floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            dynamic.add(count);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
