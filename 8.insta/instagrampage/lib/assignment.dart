import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),

      /* body: ListView( 
        children: [ 
          Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[ 
              Container(
                color: Colors.amber,
              child: Image.network( 
                "https://imgs.search.brave.com/y9lgMSQBjTqPWW_gQWNNlh03z3IBg04OeGEjYgTLr14/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/b3Jlc3QtbGFuZHNj/YXBlXzcxNzY3LTEy/Ny5qcGc_c2l6ZT02/MjYmZXh0PWpwZw",
                width:double.infinity,
                height:200,
              ),
              ),
              Row( 
                children:[ 
                  IconButton(onPressed:() {},
                   icon:const Icon( 
                    Icons.comment_outlined,
                   ),
                   ),
                   IconButton(onPressed:() {}, icon:const Icon( 
                    Icons.favorite_outline_rounded,
                   ),
                   ),
                ],
              ),
              
            ],
          ),
          Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[ 
              Container(
                color: Colors.amber,
              child: Image.network( 
                "https://imgs.search.brave.com/y9lgMSQBjTqPWW_gQWNNlh03z3IBg04OeGEjYgTLr14/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/b3Jlc3QtbGFuZHNj/YXBlXzcxNzY3LTEy/Ny5qcGc_c2l6ZT02/MjYmZXh0PWpwZw",
                width:double.infinity,
                height:200,
              ),
              ),
              Row( 
                children:[ 
                  IconButton(onPressed:() {},
                   icon:const Icon( 
                    Icons.comment_outlined,
                   ),
                   ),
                   IconButton(onPressed:() {}, icon:const Icon( 
                    Icons.favorite_outline_rounded,
                   ),
                   ),
                ],
              ),
              
            ],
          ),
          Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[ 
              Container(
                color: Colors.amber,
              child: Image.network( 
                "https://imgs.search.brave.com/y9lgMSQBjTqPWW_gQWNNlh03z3IBg04OeGEjYgTLr14/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/b3Jlc3QtbGFuZHNj/YXBlXzcxNzY3LTEy/Ny5qcGc_c2l6ZT02/MjYmZXh0PWpwZw",
                width:double.infinity,
                height:200,
              ),
              ),
              Row( 
                children:[ 
                  IconButton(onPressed:() {},
                   icon:const Icon( 
                    Icons.comment_outlined,
                   ),
                   ),
                   IconButton(onPressed:() {}, icon:const Icon( 
                    Icons.favorite_outline_rounded,
                   ),
                   ),
                ],
              ),
              
            ],
          )
        

        ],

      )*/

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://imgs.search.brave.com/y9lgMSQBjTqPWW_gQWNNlh03z3IBg04OeGEjYgTLr14/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/b3Jlc3QtbGFuZHNj/YXBlXzcxNzY3LTEy/Ny5qcGc_c2l6ZT02/MjYmZXh0PWpwZw",
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost1Liked = !_isPost1Liked;
                        });
                      },
                      icon: Icon(
                        _isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost1Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send_rounded,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://imgs.search.brave.com/y9lgMSQBjTqPWW_gQWNNlh03z3IBg04OeGEjYgTLr14/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/b3Jlc3QtbGFuZHNj/YXBlXzcxNzY3LTEy/Ny5qcGc_c2l6ZT02/MjYmZXh0PWpwZw",
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost2Liked = !_isPost2Liked;
                        });
                      },
                      icon: Icon(
                        _isPost2Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost2Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send_rounded,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://imgs.search.brave.com/y9lgMSQBjTqPWW_gQWNNlh03z3IBg04OeGEjYgTLr14/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9m/b3Jlc3QtbGFuZHNj/YXBlXzcxNzY3LTEy/Ny5qcGc_c2l6ZT02/MjYmZXh0PWpwZw",
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost3Liked = !_isPost3Liked;
                        });
                      },
                      icon: Icon(
                        _isPost3Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost3Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send_rounded,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
