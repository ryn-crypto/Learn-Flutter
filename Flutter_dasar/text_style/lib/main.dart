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
          title: const Text("Latihan text style"),
        ),
        body: const Center(
          child: Text(
            'Ini adalah text',
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationThickness: 1,
                decorationStyle: TextDecorationStyle.dashed),
          ),
        ),
      ),
    );
  }
}
