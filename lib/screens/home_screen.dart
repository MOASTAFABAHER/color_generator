import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  var number = 444444;
  int red = 0;
  int green = 255;
  int blue = 255;
  double opacity = 2;
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MaterialColor main = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(widget.red, widget.green, widget.blue, 50),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.blue),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      setRandomColor();
                    });
                  },
                  child: Text("generate")),
              Text(
                '#${Color.fromRGBO(widget.red, widget.green, widget.blue, 50).value.toRadixString(16)}',
              ),
            ],
          ),
        ),
      ),
    );
  }

  setRandomColor() {
    int red = Random().nextInt(255);
    int green = Random().nextInt(255);
    int blue = Random().nextInt(255);

    // double opacity = Random().nextDouble(255.5);

    setState(() {
      widget.red = red;
      widget.blue = blue;
      widget.green = green;
    });
  }
}
