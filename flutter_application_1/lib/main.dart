import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dianab',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(48, 223, 25, 1)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.account_circle_rounded),
          backgroundColor: Colors.blueAccent,
          title: const Text("Telefono Diana"),
          elevation: 15,
          shadowColor: Colors.blueGrey,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.yellow, width: 50, height: 100),
              Container(color: Colors.blue, width: 50, height: 100),
              Container(color: Colors.red, width: 50, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}