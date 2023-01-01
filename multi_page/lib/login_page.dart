import 'package:flutter/material.dart';
import 'package:multi_page/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const MainPage();
          }));
        },
        child: const Text("Login"),
      )),
    );
  }
}
