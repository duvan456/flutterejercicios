import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotonController extends GetxController {

  var titleAppBar = 'Colors'.obs;
  var selectedColor = Colors.cyan.obs;

  final List<Map<String, dynamic>> data = [
    {'title': 'Colors', 'color': Colors.cyan},
    {'title': 'Red', 'color': Colors.red},
    {'title': 'Yellow', 'color': Colors.yellow},
    {'title': 'Blue', 'color': Colors.blue},
  ];

  void changeColor(int position) {
    titleAppBar.value = data[position]['title'];
    selectedColor.value = data[position]['color'];
  }

  void resetColor() {
    titleAppBar.value = data[0]['title'];
    selectedColor.value = data[0]['color'];
  }
  
}

final BotonController botonController = BotonController();
