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
          title: const Text("Stack dan Align Widget"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.white)),
                      Flexible(flex: 1, child: Container(color: Colors.black12))
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1, child: Container(color: Colors.black12)),
                      Flexible(flex: 1, child: Container(color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'Ini adalah text untuk menguji widget stack yang akan di posisikan di tengah dari urutan sehingga bisa digunakan untuk scroll, juga menguji background dan forground',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'Ini adalah text untuk menguji widget stack yang akan di posisikan di tengah dari urutan sehingga bisa digunakan untuk scroll, juga menguji background dan forground',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'Ini adalah text untuk menguji widget stack yang akan di posisikan di tengah dari urutan sehingga bisa digunakan untuk scroll, juga menguji background dan forground',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'Ini adalah text untuk menguji widget stack yang akan di posisikan di tengah dari urutan sehingga bisa digunakan untuk scroll, juga menguji background dan forground',
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                )
              ],
            ),
            Align(
                alignment: Alignment(0, 0.75),
                child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Button',
                      style: TextStyle(color: Colors.yellow),
                    )))
          ],
        ),
      ),
    );
  }
}
