import 'package:flutter/material.dart';

void main() {
  runApp(Fourt());
}

class Fourt extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Fouty();
  }
}

class Fouty extends State<Fourt> {
  List colors = ['red', 'amber', 'white', 'black', 'purple'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: 'Rang tanla',
            icon: const Icon(Icons.add),
            items: colors.map((e) {
              return DropdownMenuItem(value: e, child: Text(e));
            }).toList(),
            onChanged: (value) {},
          ),
        ],
      )),
    );
  }
}
