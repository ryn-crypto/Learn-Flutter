import 'package:api_connect/pos_result_model.dart';
import 'package:api_connect/user_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Api Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? "${postResult.id} | ${postResult.name} | ${postResult.job} | ${postResult.created}"
                  : "tidak ada data"),
              ElevatedButton(
                  onPressed: () {
                    PostResult.connectToApi('Riyan', 'Guru').then((value) {
                      postResult = value;
                      setState(() {});
                    });
                  },
                  child: Text("Post data")),
              Text((user != null)
                  ? "${user.id} | ${user.name}"
                  : "tidak ada data"),
              ElevatedButton(
                  onPressed: () {
                    User.connectToAPI('10').then((value) {
                      user = value;
                      setState(() {});
                    });
                  },
                  child: Text("Get Data"))
            ],
          ),
        ),
      ),
    );
  }
}
