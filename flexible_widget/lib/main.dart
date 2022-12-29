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
          title: const Text("Flexible Layout"),
        ),
        body: Column(children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blueAccent,
                    )),
                Flexible(flex: 1, child: Container(color: Colors.grey)),
                Flexible(flex: 1, child: Container(color: Colors.yellowAccent))
              ],
            ),
          ),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.greenAccent,
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.amber,
              )),
        ]),
      ),
    );
  }
}
