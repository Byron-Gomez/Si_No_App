import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentacion/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Si No APP',
      debugShowCheckedModeBanner: false, // Deshabilita el banner de depuración en la esquina superior derecha.
      theme: AppTheme(selectedColor: 2).theme(), // Establece el tema de la aplicación usando la clase AppTheme.
      home: const ChatScreen(), // Define la pantalla principal de la aplicación como ChatScreen.
    );
  }
}
