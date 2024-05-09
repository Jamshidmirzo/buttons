import 'package:flutter/material.dart';

void main() {
  runApp(Buttons());
}

class Buttons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Stateclass();
  }
}

class Stateclass extends State<Buttons> {
  Color color = Colors.black;
  String text = '';
  changeall(String texts, Color colors) {
    color = colors;
    text = texts;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text(text),
        ),
        body: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    changeall('Bu qizil', Colors.red);
                  },
                  child: const Text(
                    'RED',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    changeall('Bu yellow', Colors.amber);
                  },
                  child: const Text(
                    'Yellow',
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    changeall('Bu yashil', Colors.green);
                  },
                  child: const Text(
                    'Yashil',
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
