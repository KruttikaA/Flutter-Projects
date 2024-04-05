import 'package:flutter/material.dart';

class Cricket extends StatefulWidget {
  const Cricket({super.key});

  @override
  State createState() => _CricketState();
}

class _CricketState extends State {
  List imageList = [
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzXKczOsKLWCjVpiHZ2KBhb0OkvyXQZL82FQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0GtrTRNqLjj31VbLOQsxdikcj6LJ_3EoC1w&usqp=CAU",
      "",
      
    ],
    ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxUO-GwokndX5xQg96jlTJl1x7grDsrCTjjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJThKY-42WA38lrSRsLq-D6qUvzWzGylwZNw&usqp=CAU",
    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-09/08/full/1662654605-9627.jpg?im=FeatureCrop,size=(826,465)",
    ],
    [
      "https://images.moneycontrol.com/static-mcnews/2023/06/2-shubman-gill-ICC-WTC-2023-770x433.jpg?impolicy=website&width=770&height=431",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbRq_LMkCoJ5YN_gUjq4pcOqkwGu562DzeWg&usqp=CAU",
      "https://bcciplayerimages.s3.ap-south-1.amazonaws.com/resizedimageskirti/1125_compress.png",
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cricket Player",
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: ListView.separated(
          itemCount: imageList.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Text("------------------");
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(10),
              child: Image.network(imageList[index][0]),
            );
          }),
    );
  }
}
