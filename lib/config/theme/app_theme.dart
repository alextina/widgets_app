import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.deepPurpleAccent,
  Colors.yellowAccent,
  Colors.greenAccent,
  Colors.pinkAccent,
  Colors.blueAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color muyst be greater than 0'),
        assert(selectedColor <= colorList.length - 1,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        // useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
