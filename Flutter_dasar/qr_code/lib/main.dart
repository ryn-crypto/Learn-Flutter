import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: QrImage(
          data: 'https://github.com/ryn-crypto',
          version: 6,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: const EdgeInsets.all(20),
          size: 300,
        ),
      )),
    );
  }
}
