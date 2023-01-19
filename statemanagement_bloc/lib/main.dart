import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:statemanagement_bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();

  @override
  Void dispose() {
    bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  bloc.EventSink.add(ColorEvent.to_amber);
                }),
            const SizedBox(width: 10),
            FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () {
                  bloc.EventSink.add(ColorEvent.to_lightblue);
                })
          ],
        ),
        appBar: AppBar(
          title: const Text('State management menggunakan BLoC'),
        ),
        body: Center(
            child: StreamBuilder(
          builder: ((context, snapshot) {
            return AnimatedContainer(
                width: 100,
                height: 100,
                color: snapshot.data,
                duration: const Duration(milliseconds: 500));
          }),
          stream: bloc.stateStream,
          initialData: Colors.amber,
        )),
      ),
    );
    ;
  }
}
