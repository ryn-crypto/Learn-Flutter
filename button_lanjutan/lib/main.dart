import 'package:flutter/material.dart';
import 'colorfull_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Colorfull Button'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.amber, Colors.red, Icons.comment),
              ColorfulButton(Colors.green, Colors.purple, Icons.computer),
              ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone)
            ],
          ),
        ),
      ),
    );
  }
}
