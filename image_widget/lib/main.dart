import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            color: Colors.black,
            child: const Image(
              image: AssetImage('images/moonknight.jpg'),
              fit: BoxFit.contain,
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
