import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burguja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/006/487/917/original/man-avatar-icon-free-vector.jpg',
            ),
          ),
        ),
        title: const Text('Juan Perez 🐺'),
      ),
      body: _ChatView(), // Agrega aquí el contenido de tu pantalla de chat
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0) ? const OtroMyMessageBubble() : MyMessageBubble();
                },
                // Agrega aquí el contenido de tu vista de chat dentro de este contenedor
              ),
            ),
            Text('Hola Mundo'),
          ],
        ),
      ),
    );
  }
}
