import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Si No APP',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 2).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),

        ),
        body: Center(child: FilledButton.tonal(
          onPressed: (){},
         child: const Text('Click me'))),
      ),
       
    );
  }
}