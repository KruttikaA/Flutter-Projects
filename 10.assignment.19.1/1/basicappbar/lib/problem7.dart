import 'package:flutter/material.dart';

class Problem7 extends StatelessWidget {
  const Problem7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Containers",
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.network(
                  "https://static2.tripoto.com/media/filter/tst/img/109540/TripDocument/1493019408_img_2543.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(padding: EdgeInsets.all(30)),
                Image.asset(
                  "assets/images/5.jpeg",
                ),
              ],
            ),
          ),
        ));
  }
}
