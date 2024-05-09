import 'package:flutter/material.dart';

void main() {
  runApp(Third());
}

class Third extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Smth();
  }
}

class Smth extends State<Third> {
  String text = '';
  changeall(String texts) {
    text = texts;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                onDoubleTap: () {
                  changeall('2 marta bosild');
                },
                onLongPress: () {
                  changeall('koop bosildi marta bosild');
                },
                onTap: () {
                  changeall('1 bosild');
                },
                child: Ink(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [Colors.green, Colors.blue])),
                  child: const Text(
                    'boss',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Text(text, style: TextStyle(fontSize: 40)),
            ],
          )
        ],
      )),
    );
  }
}
