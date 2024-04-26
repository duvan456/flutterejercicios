import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state/controllers/boton_controller.dart';

void main() {
  runApp(const AppColors());
}

class AppColors extends StatelessWidget {
  const AppColors({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Colors',
      debugShowCheckedModeBanner: false,
      home: Body(),
    );
  }
}

class Body extends GetWidget {
  const Body({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialStateColor.resolveWith((states) => botonController.selectedColor.value),
        title: Text(botonController.titleAppBar.value),
        actions: [
          IconButton(
            icon: const Icon(Icons.restart_alt),
            onPressed: botonController.resetColor,
          ),
        ],
      ),
      backgroundColor: botonController.selectedColor.value,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: botonController.data.asMap().entries.map((entry) {
            final int index = entry.key;
            final Map<String, dynamic> item = entry.value;

            if (index == 0) return const SizedBox.shrink();

            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    return botonController.titleAppBar.value == item['title']
                        ? botonController.selectedColor.value
                        : Colors.white;
                  }),
                ),
                onPressed: () => botonController.changeColor(index),
                child: Text(
                  item['title'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
