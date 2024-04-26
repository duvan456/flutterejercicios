import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        backgroundColor: Colors.blueAccent,
        title: const Text("asddd"),
        elevation: 15,
        shadowColor: Colors.blueGrey,
      ),
      body: const Text("asd"),
    );
  }
}

