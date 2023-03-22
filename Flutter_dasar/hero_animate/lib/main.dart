import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 128, 98, 8),
          flexibleSpace: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    'Latihan Hero Animation',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondPage();
          }));
        },
        child: Hero(
          tag: 'profile',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://assets.pikiran-rakyat.com/crop/0x34:1071x1013/x/photo/2021/04/10/4169738201.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 128, 98, 8),
      ),
      body: Center(
        child: Hero(
          tag: 'profile',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: const Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://assets.pikiran-rakyat.com/crop/0x34:1071x1013/x/photo/2021/04/10/4169738201.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
