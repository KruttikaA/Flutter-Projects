import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print('Init State');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Did Change Dependencies');
  }

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $_counter'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    print('Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Dispose');
    super.dispose();
}
}