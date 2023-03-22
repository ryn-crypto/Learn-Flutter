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
        appBar: AppBar(title: const Text('gradient opacity')),
        body: Center(
          child: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, bounds.width, bounds.height));
            },
            blendMode: BlendMode.dstIn,
            child: const Image(
                width: 300,
                image: NetworkImage(
                    'https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/Danau-Toba-edited.jpg')),
          ),
        ),
      ),
    );
  }
}
