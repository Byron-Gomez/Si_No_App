import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Contenedor para el mensaje
        Container(
          decoration: BoxDecoration(
            color: colors.primary, // Color primario del tema de la aplicación
            borderRadius: BorderRadius.circular(20), // Bordes redondeados del contenedor
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'hola que te parece salir a comer  ', // Contenido del mensaje
              style: TextStyle(color: Colors.white), // Estilo del texto (color blanco)
            ),
          ),
        ),
        const SizedBox(height: 10), // Espacio entre mensajes
      ],
    );
  }
}
