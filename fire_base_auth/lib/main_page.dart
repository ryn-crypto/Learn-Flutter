import 'package:fire_base_auth/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser user;
  const MainPage(this.user, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: Column(children: [
          Text(user.uid),
          ElevatedButton(
              onPressed: () async {
                await AuthServices.signOut();
              },
              child: const Text('Sign Out'))
        ]),
      ),
    );
  }
}
