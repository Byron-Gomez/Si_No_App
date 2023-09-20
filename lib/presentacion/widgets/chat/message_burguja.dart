import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {

  final Message message;

  const MyMessageBubble({
    super.key,
    required this.message
  });

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
              message.text, // Contenido del mensaje
              style: TextStyle(color: Colors.white), // Estilo del texto (color blanco)
            ),
          ),
        ),
        const SizedBox(height: 10), // Espacio entre mensajes
      ],
    );
  }
}
