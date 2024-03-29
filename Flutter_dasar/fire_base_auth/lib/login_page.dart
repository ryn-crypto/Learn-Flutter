import 'package:fire_base_auth/auth_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Sign In Anonimous'),
          onPressed: () async {
            await AuthServices.signInAnonimous();
          },
        ),
      ),
    );
  }
}
