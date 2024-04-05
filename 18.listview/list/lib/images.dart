import 'package:flutter/material.dart';

class DisplayImages extends StatefulWidget {
  const DisplayImages({super.key});
  @override
  State createState() => _DisplayImagesState();
}

class _DisplayImagesState extends State<DisplayImages> {
  List<String> imageList = [
    "https://media.istockphoto.com/id/1152163935/photo/reichstag-building-seat-of-the-german-parliament.jpg?s=612x612&w=0&k=20&c=m3-rqLWdw7VBAnTOxKJkzAjLXXG55uNsftI1P-jFxHQ=",
    "https://media.istockphoto.com/id/1152163935/photo/reichstag-building-seat-of-the-german-parliament.jpg?s=612x612&w=0&k=20&c=m3-rqLWdw7VBAnTOxKJkzAjLXXG55uNsftI1P-jFxHQ=",
    "https://media.istockphoto.com/id/1152163935/photo/reichstag-building-seat-of-the-german-parliament.jpg?s=612x612&w=0&k=20&c=m3-rqLWdw7VBAnTOxKJkzAjLXXG55uNsftI1P-jFxHQ=",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ListView Builder Demo"),
        ),
        body: ListView.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: Image.network(
                  imageList[index],
                ),
              );
            }),
      ),
    );
  }
}
