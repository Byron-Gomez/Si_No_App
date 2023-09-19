import 'package:flutter/material.dart';

class OtroMyMessageBubble extends StatelessWidget {
  const OtroMyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Contenedor para el mensaje del otro usuario
        Container(
          decoration: BoxDecoration(
            color: colors.primary, // Color primario del tema de la aplicación
            borderRadius: BorderRadius.circular(20), // Bordes redondeados del contenedor
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'va jalo', // Contenido del mensaje
              style: TextStyle(color: Colors.white), // Estilo del texto (color blanco)
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBublle(),
        const SizedBox(height: 10),

      ],
    );
  }
}

class _ImageBublle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('estoy enviando una imagen'),
          );
        },
      ),
    );
  }
}
