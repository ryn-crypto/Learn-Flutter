import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Contoh tab Bar'),
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.comment),
                  text: 'Comment',
                ),
                Tab(
                  child: Image(
                    image: AssetImage('assets/settings.png'),
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: "News",
                )
              ]),
            ),
            body: const TabBarView(children: [
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              Center(
                child: Text("Tab 4"),
              ),
            ]),
          )),
    );
  }
}
