import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterLogo(
                        size: 50,
                      ),
                      const Text(
                        "Flutter.",
                        style: TextStyle(fontSize: 32),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  const Text(
                    'forgot password?',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 109, 199),
                    ),
                    child: const Text('login'),
                    onPressed: () {
                      print('button has clicked!');
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(380),
                    child: const Text('new user? create account.'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
