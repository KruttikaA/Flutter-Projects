import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI2 extends StatefulWidget {
  const UI2({super.key});
  @override
  State createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  int count = 0;
  List dynamic = [];
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
          "To-do list",
          style: GoogleFonts.quicksand(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: 
         ListView.builder(
           // itemCount: dynamic.length,
            itemBuilder: (context, index) {
              return Container(
                height: 112,
                width: 330,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: colorlist[index % (colorlist.length)],
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          padding: EdgeInsets.all(6),
                          decoration: const BoxDecoration(
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
                          child: Image.network("https://tse2.mm.bing.net/th?id=OIP.SOnznpW_gzCOew_BvOTxjAHaGi&pid=Api&P=0&h=180",),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              //const SizedBox(width: 5,),

                              SizedBox(
                                height: 15,
                                width: 243,
                                child: Text(
                                  "Lorem Ipsum is simply setting industry. ",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),

                              SizedBox(
                                height: 44,
                                width: 243,
                                child: Text(
                                  "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 13,
                            width: 58,
                            child: Text(
                              "10 July 2023 ",
                              style: GoogleFonts.quicksand(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.edit,
                            color: const Color.fromRGBO(0, 139, 148, 1),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.delete,
                            color: const Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {

          showModalBottomSheet(context: context, builder: (BuildContext context){
            return 
           /* Container
            (
              height: 363,
              width: 360,
              //margin: EdgeInsets.only(top: 437),
              decoration:const  BoxDecoration(
                
                 borderRadius:BorderRadius.only(
                 topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
                ),
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
              child:*/
              Padding(padding:EdgeInsets.all(10.0),
              child:
              Column(
              children: [
                const SizedBox(height: 5,),
                 SizedBox(
                  height: 28,
                  width: 125,
                child:
                Text("Create Task",
                style: GoogleFonts.quicksand(
                  
                  fontSize: 22,
                  fontWeight:FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  //height:27.5,
                  

                ),
                textAlign: TextAlign.center,),
                ),

                //const SizedBox(width: 10,),
                Row(
                  children: [
                 
                 SizedBox(
                  
                  
                 
                  child: Text("Title",
                  style:GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 15,
                    //height:13.75,
                  ) ,
                  ),
                ),],),
                const SizedBox(height: 4,),
           Row(children: [   
            //const SizedBox(
            //  width: 15,
            //),
          Container(
            height:40 ,
            width:391 ,
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5,color: const Color.fromRGBO(0, 139, 148, 1)),
              borderRadius: const BorderRadius.all(Radius.circular(5),),
              color: Color.fromRGBO(248, 248, 248, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],            ),
            child:
          TextField(
            //controller: namessController,
            
            decoration: new InputDecoration.collapsed(
              //border: OutlineInputBorder(
              //  borderRadius: BorderRadius.all(Radius.circular(30)),
              //),
              hintText: "Enter title of task",
            ),
            keyboardType: TextInputType.text,
          ), 
          
          ),

           ],
          ), 

           const SizedBox(height: 10,),  




                Row(
                  children: [
                 
                 SizedBox(
                  
                  
                 // height: 14,
                 // width:22 ,
                  child: Text("Description",
                  style:GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 15,
                    //height:13.75,
                  ) ,
                  ),
                ),],),
                const SizedBox(height: 4,),
                Row(children: [   
            //const SizedBox(
            //  width: 15,
            //),
          Container(
           height:72,
            width:391 ,
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5,color: const Color.fromRGBO(0, 139, 148, 1)),
              borderRadius: const BorderRadius.all(Radius.circular(5),),
              color: Color.fromRGBO(248, 248, 248, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],            ),
            child:
          TextField(
            //controller: namessController,
            
            decoration: new InputDecoration.collapsed(
              //border: OutlineInputBorder(
              //  borderRadius: BorderRadius.all(Radius.circular(30)),
              //),
              hintText: "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry.",
            ),
            keyboardType: TextInputType.text,
          ), 
          
          ),

           ],
          ),         



           const SizedBox(height: 10,),  




                Row(
                  children: [
                 
                 SizedBox(
                  
                  
                 // height: 14,
                 // width:22 ,
                  child: Text("Date",
                  style:GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 15,
                    //height:13.75,
                  ) ,
                  ),
                ),],),
                const SizedBox(height: 4,),
                Row(children: [   
            //const SizedBox(
            //  width: 15,
            //),
          Container(
           height:40,
            width:391 ,
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5,color: const Color.fromRGBO(0, 139, 148, 1)),
              borderRadius: const BorderRadius.all(Radius.circular(5),),
              color: Color.fromRGBO(248, 248, 248, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],            ),
            child://Row(children: [

          TextField(
            //textAlign: TextAlign.center,
            //controller: ,
            
            decoration: new InputDecoration.collapsed(
              //border: OutlineInputBorder(
              //  borderRadius: BorderRadius.all(Radius.circular(30)),
              //),
              
              hintText: "2023-07-26",
              
            ),
            keyboardType: TextInputType.text,
          ), 
         /* const Spacer(),
          Icon(Icons.calendar_today_outlined),
                ],
                ),*/
          
          ),

           ],
          ),   
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              //color: const Color.fromRGBO(0, 139, 148, 1),
            
              //borderRadius: BorderRadius.circular(20),
              boxShadow:const  [
                BoxShadow(offset: Offset(0, 0),spreadRadius: 1,blurRadius: 10,color:const Color.fromRGBO(0, 0, 0, 0.1), ),
              ]
            ),
            child:
          ElevatedButton(onPressed:(){}, 
        
              style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                  //shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),
               
                  minimumSize: const Size(300, 50),
                 shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                 // 
                 ),
          child: Text("Submit",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          ),
          ) , 
          
            
          ),  

              
              ],
              ),
              );
           
             //);

          }
          );
          },
          child: const Icon(
            Icons.add,
            size: 50,
            color:Colors.white,
          ),
          ),
    );
      
      
  
  }
}
