import 'package:flutter/material.dart';
import 'package:multi_page/main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return const MainPage();
          }));
        },
        child: const Text("Back"),
      )),
    );
  }
}
