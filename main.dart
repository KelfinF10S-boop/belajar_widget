import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(
  backgroundColor: const Color.fromARGB(255, 0, 122, 102),
  title: const Text(
    'Wassup.!!',
    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.camera_alt_outlined),
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.more_vert_outlined),
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ],
),

        body: Center(
          child: ListView(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 122, 102),
              ),
            ],

          )
        ),
      ),
    );
  }
}