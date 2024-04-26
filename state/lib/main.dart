import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color appbarbgcolor = Colors.grey;
  Color bodybgcolor = Colors.white;
  Color redbutton = Colors.white;
  Color yellowbutton = Colors.white;
  Color bluebutton = Colors.white;
  String title = 'Colors';

  void _restart() {
    setState(() {
      appbarbgcolor = Colors.grey;
      bodybgcolor = Colors.white;
      redbutton = Colors.white;
      yellowbutton = Colors.white;
      bluebutton = Colors.white;
      title = 'Colors';
    });
  }

  void _redbutton() {
    setState(() {
      appbarbgcolor = Colors.red;
      bodybgcolor = Colors.redAccent;
      redbutton = Colors.red;
      yellowbutton = Colors.white;
      bluebutton = Colors.white;
      title = 'Red';
    });
  }

  void _yellowbutton() {
    setState(() {
      appbarbgcolor = Colors.yellow;
      bodybgcolor = Colors.yellowAccent;
      redbutton = Colors.white;
      yellowbutton = Colors.yellow;
      bluebutton = Colors.white;
      title = 'Yellow';
    });
  }

  void _bluebutton() {
    setState(() {
      appbarbgcolor = Colors.blue;
      bodybgcolor = Colors.blueAccent;
      redbutton = Colors.white;
      yellowbutton = Colors.white;
      bluebutton = Colors.blue;
      title = 'Blue';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarbgcolor,
        title: Center(
          child: Text(title)
          ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Show Snackbar',
            onPressed: _restart,
          ),
        ],
      ),
      body: Container(
        color: bodybgcolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: redbutton,
                ),
                onPressed: _redbutton,
                child: const Text('Red'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: yellowbutton,
                ),
                onPressed: _yellowbutton,
                child: const Text('Yellow'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: bluebutton,
                ),
                onPressed: _bluebutton,
                child: const Text('Blue'),
              ),
            ]
          ),
        ),
      )
    );
  }
}
