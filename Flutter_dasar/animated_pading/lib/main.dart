import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Padding'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              myPadding = 40;
                            });
                          }),
                          child: Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                'Tekan disini',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.green,
                        ),
                      ))
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.blue,
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
