import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PortFolio(),
    );
  }
}

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});
  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  TextEditingController nameController = TextEditingController();
  TextEditingController namesController = TextEditingController();
  TextEditingController namessController = TextEditingController();
  bool? isSubmit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dream Company",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "Enter  Name",
            ),
            keyboardType: TextInputType.text,
          ),
          TextField(
            controller: namesController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "Enter Company Name",
            ),
            keyboardType: TextInputType.text,
          ),
          TextField(
            controller: namessController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "Enter Company Location",
            ),
            keyboardType: TextInputType.text,
          ),
         const  SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isSubmit = true;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 110, 161, 200),
              fixedSize: const Size(300, 30),
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            child: const Text(
              "Submit",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          if (isSubmit == true)
            Container(
              height: 100,
              width: 350,
              color: const Color.fromARGB(255, 231, 233, 233),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name : ${nameController.text}",
                  ),
                  Text(
                    "Company Name : ${namesController.text}",
                  ),
                  Text(
                    "Company Location : ${namessController.text}",
                  )
                ],
              ),
            ),
        ],
),
);
}
}