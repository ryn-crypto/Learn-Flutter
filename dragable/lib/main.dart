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
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color? targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dragable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) => {isAccepted = true, targetColor = value},
                builder: ((context, candidateData, rejectedData) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: const StadiumBorder(),
                          ),
                        )
                      : const SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                              color: Colors.grey, shape: StadiumBorder()),
                        );
                }))
          ],
        ),
      ),
    );
  }
}
