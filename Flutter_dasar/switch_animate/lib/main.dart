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
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Switcher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
                child: myWidget,
              ),
              Switch(
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.red[200],
                  inactiveThumbColor: Colors.red,
                  value: isOn,
                  onChanged: (newvalue) {
                    isOn = newvalue;
                    setState(() {
                      if (isOn) {
                        myWidget = Container(
                          key: ValueKey(1),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border:
                                  Border.all(color: Colors.amber, width: 3)),
                        );
                        // myWidget = const SizedBox(
                        //   width: 200,
                        //   height: 100,
                        //   child: Center(
                        //     child: Text(
                        //       "Switch : ON",
                        //       style: TextStyle(
                        //           color: Colors.green,
                        //           fontWeight: FontWeight.w700,
                        //           fontSize: 20),
                        //     ),
                        //   ),
                        // );
                      } else {
                        myWidget = Container(
                          key: ValueKey(2),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
