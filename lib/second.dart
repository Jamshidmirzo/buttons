import 'package:flutter/material.dart';

void main() {
  runApp(Second());
}

class Second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Seconds();
  }
}

class Seconds extends State<Second> {
  Color colors = Colors.black;
  changeeall(Color color) {
    if (colors == Colors.black) {
      colors = Colors.amber;
    } else {
      colors = Colors.black;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  changeeall(Colors.amber);
                },
                icon: Icon(
                  Icons.star_sharp,
                  color: colors,
                  size: 100,
                )),
          ],
        ),
      ),
    );
  }
}
