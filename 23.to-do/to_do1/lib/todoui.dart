import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoAppUI extends StatefulWidget {
  const ToDoAppUI({super.key});

  @override
  State<ToDoAppUI> createState() => _ToDoAppUIState();
}

class _ToDoAppUIState extends State<ToDoAppUI> {
  //text editing controllers
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              //To avoid the keyboard overlap the screen
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        String fromatedDate =
                            DateFormat.yMMMd().format(pickeddate!);
                        setState(() {
                          dateController.text = fromatedDate;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }

  var listOfColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2,167,177,1),
        centerTitle: true,
        title: Text(
          "TODO APP",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(
            padding:const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: listOfColors[index% listOfColors.length],
                boxShadow: const[
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0,0,0,0.1),
                    blurRadius: 10,

                  ),
                ],
                borderRadius: BorderRadius.circular(10),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //Row1
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.network("https://tse2.mm.bing.net/th?id=OIP.SOnznpW_gzCOew_BvOTxjAHaGi&pid=Api&P=0&h=180",),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Take Notes",
                             style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: const Color.fromRGBO(0,0,0,1),
                             ), 
                             ),
                             const SizedBox(
                              height: 10,
                             ),
                             Text(
                             "Take notes of every app you create",
                             style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(84,84,84,1),

                             ),
                             ),
                            ],
                          ),
                           ),
                      ],
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),

                      //Row2
                      Padding(
                        padding:const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: Row(
                          children: [
                            Text(
                           " 10 July 2023",
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132,132,132,1),
                            ),
                            ),
                            const Spacer(),

                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: (){},
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0,139,148,1),

                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: const Icon(
                                  Icons.delete_outlined,
                                  color: Color.fromRGBO(0,139,148,1),

                                ),
                              ),                              

                            ],
                           ), 
                          ],
                          ),
                        ),

                ],
                ),
              ),
            ),
            );
        },

        
        
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(0,139,148,1),
          onPressed: (){
            showBottomSheet();
          },
          child: const Icon(
            size: 50,
            Icons.add,
            color: Colors.white,
          ),
        ),
    );
  }
}
