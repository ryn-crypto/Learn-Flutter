import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/aplication_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationcolor, _) => Text(
                'State Management',
                style: TextStyle(color: applicationcolor.color),
              ),
            ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationcolor, _) => AnimatedContainer(
                  margin: const EdgeInsets.all(5),
                  duration: const Duration(milliseconds: 500),
                  width: 100,
                  height: 100,
                  color: applicationcolor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('AB'),
                  Consumer<ApplicationColor>(
                      builder: (context, applicationcolor, _) => Switch(
                          value: applicationcolor.isLightBlue,
                          onChanged: (newvalue) {
                            applicationcolor.isLighBlue = newvalue;
                          })),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: const Text('LB'),
                  )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
