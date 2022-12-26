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
          title: const Text('Latihan Container'),
        ),
        body: Container(
          color: Colors.redAccent,
          margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: const EdgeInsets.all(10),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.amber, Colors.blue]))),
        ),
      ),
    );
  }
}
