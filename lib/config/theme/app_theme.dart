import 'package:flutter/material.dart';

const Color _customColor = Color(0xEDF99BF4);

const List<Color> _colorsThemes = [
  _customColor,
  Colors.orangeAccent,
  Colors.greenAccent,
  Colors.blueAccent,
  Colors.grey,
  Colors.redAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  }) : assert(
          selectedColor >= 0 && selectedColor < _colorsThemes.length,
          'Colors must be between 0 and ${_colorsThemes.length - 1}',
        );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsThemes[selectedColor],
    );
  }
}
