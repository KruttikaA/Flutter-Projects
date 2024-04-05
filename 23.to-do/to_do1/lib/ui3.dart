import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI3 extends StatefulWidget {
  const UI3({super.key});
  @override
  State createState() => _UI3State();
}

class _UI3State extends State<UI3> {
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
        body: ListView.builder(
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
                          padding: const EdgeInsets.all(6),
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
                          child: Image.network(
                            "https://tse2.mm.bing.net/th?id=OIP.SOnznpW_gzCOew_BvOTxjAHaGi&pid=Api&P=0&h=180",
                          ),
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
                          const Icon(
                            Icons.edit,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(
                            Icons.delete,
                            color: Color.fromRGBO(0, 139, 148, 1),
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
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           Text(
                              "Create Task",
                              style: GoogleFonts.quicksand(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                //height:27.5,
                              ),
                            ),
                          

                          const SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                  "Title",
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 139, 148, 1),
                                    fontSize: 15,
                                    //height:13.75,
                                  ),
                                ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              //const SizedBox(
                              //  width: 15,
                              //),
                              Container(
                                height: 40,
                                width: 391,
                                padding: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5,
                                      color:
                                          const Color.fromRGBO(0, 139, 148, 1)),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Color.fromRGBO(248, 248, 248, 1),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: TextField(
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

                          const SizedBox(
                            height: 10,
                          ),

                          Text(
                                  "Description",
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 139, 148, 1),
                                    fontSize: 15,
                                    //height:13.75,
                                  ),
                                ),
                              
                            
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              
                              Container(
                                height: 72,
                                width: 391,
                                padding: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5,
                                      color:
                                          const Color.fromRGBO(0, 139, 148, 1)),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Color.fromRGBO(248, 248, 248, 1),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  //controller: namessController,

                                  decoration: new InputDecoration.collapsed(
                                    //border: OutlineInputBorder(
                                    //  borderRadius: BorderRadius.all(Radius.circular(30)),
                                    //),
                                    hintText:
                                        "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry.",
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          Text(
                                  "Date",
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 139, 148, 1),
                                    fontSize: 15,
                                    //height:13.75,
                                  ),
                                ),
                              
                            
                          const SizedBox(
                            height: 5,
                          ),
                         
                          
                         
                              Container(
                                height: 40,
                                width: 391,
                                padding: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5,
                                      color:
                                          const Color.fromRGBO(0, 139, 148, 1)),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Color.fromRGBO(248, 248, 248, 1),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: //Row(children: [

                                    TextField(
                                  //textAlign: TextAlign.center,

                                  decoration: new InputDecoration.collapsed(
                                    hintText: "2023-07-26",
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                          
                          
                          SizedBox(
                            height: 10,
                          ),
                          
                          
                          Container(
                            decoration: BoxDecoration(
                                //color: const Color.fromRGBO(0, 139, 148, 1),

                                //borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 0),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    color: const Color.fromRGBO(0, 0, 0, 0.1),
                                  ),
                                ]),
                            
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(0, 139, 148, 1),
                                  //shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),

                                  minimumSize: const Size(300, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))
                                  //
                                  ),
                              child: Text(
                                "Submit",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: const Icon(
              Icons.add,
              size: 50,
              color: Colors.white,
            )));
  }
}
