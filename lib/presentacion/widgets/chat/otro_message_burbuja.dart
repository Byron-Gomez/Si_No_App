import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class OtroMyMessageBubble extends StatelessWidget {
      final Message message;

  const OtroMyMessageBubble({
    super.key,
    required this.message
  });

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
              message.text,
              style: TextStyle(color: Colors.white), // Estilo del texto (color blanco)
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBublle(message.imageUrl!),
        const SizedBox(height: 10),

      ],
    );
  }
}

class _ImageBublle extends StatelessWidget {

final String imageUrl;

const _ImageBublle(
     this.imageUrl
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('enviando una imagen'),
          );
        },
      ),
    );
  }
}
