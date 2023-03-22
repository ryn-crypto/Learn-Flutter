import 'dart:ui';

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
          title: const Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Contoh 01 (Tanpa Apapun)',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'Contoh 02 (Small Caps)',
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              const Text(
                'Contoh 31/3 (Small Caps dan frac)',
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]),
              ),
              const Text(
                'Contoh 31/3 (Small Caps dan frac) Milonga',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Milonga",
                    fontFeatures: [
                      FontFeature.enable('smcp'),
                      FontFeature.enable('frac')
                    ]),
              ),
              const Text(
                'Contoh Cardo 19 (Tanpa Apapun)',
                style: TextStyle(fontSize: 20, fontFamily: 'Cardo'),
              ),
              const Text(
                'Contoh Cardo 19 Oldstyle',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cardo',
                    fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
              const Text(
                'Contoh Gabriola (default)',
                style: TextStyle(fontSize: 20, fontFamily: 'Gabriola'),
              ),
              Text(
                'Contoh Gabriola (Style set nomor 5)',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gabriola',
                    fontFeatures: [FontFeature.stylisticSet(05)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
