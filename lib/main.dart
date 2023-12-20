import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScratcherDemo(),
    );
  }
}

class MyScratcherDemo extends StatefulWidget {
  @override
  _MyScratcherDemoState createState() => _MyScratcherDemoState();
}

class _MyScratcherDemoState extends State<MyScratcherDemo> {
  bool isScratched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratcher Demo'),
      ),
      body: Center(
        child: Scratcher(
          accuracy: ScratchAccuracy.low,
          threshold: 25,
          brushSize: 50,
          onThreshold: () {
            setState(() {
              isScratched = true;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            child: isScratched
                ? Text(
              'You won!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
                : Text(
              'Scratch to reveal',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
