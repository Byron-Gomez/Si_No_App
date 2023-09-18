import 'package:flutter/material.dart';

// Definición del color personalizado
const Color _customColor = Color(0xFF49149F);

// Lista de colores temáticos
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

// Clase que representa un tema de la aplicación
class AppTheme {
  final int selectedColor; // Índice del color seleccionado

  // Constructor de la clase
  AppTheme({this.selectedColor = 0})
      : assert(
            selectedColor >= 0 &&
                selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  // Método para obtener el tema de la aplicación
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true, // Habilita el uso de Material3 (si se usa en la versión de Flutter correspondiente)
      colorSchemeSeed: _colorThemes[selectedColor], // Define el color principal del tema
      brightness: Brightness.dark // Opción para ajustar el brillo del tema (actualmente comentada)
    );
  }
}
