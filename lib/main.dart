import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStatefulPage()));
}

class MyStatefulPage extends StatefulWidget {
  @override
  MyStatefulPageState createState() => new MyStatefulPageState();
}

class MyStatefulPageState extends State<MyStatefulPage> {
  Random random = new Random();

  Color color;

  //separate method for random color generating
  Color changeRandomColor() {
    setState(() {
      color = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeRandomColor,
        child: Container(
          color: color,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Text(
              "Hello there",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: random.nextInt(70).ceilToDouble()),
            ),
          ),
        ),
      ),
    );
  }
}
