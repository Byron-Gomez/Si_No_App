import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burguja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR66MuTg97ao9aAybtQ_Hfcjvxc7QK0PF50YA&usqp=CAU'            ),
          ),
        ),
        title: const Text('Antoni Castañeda 🐼'),
      ),
      body: _ChatView(), // Llama a _ChatView para mostrar el contenido de tu pantalla de chat
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
                  // Alternar entre MyMessageBubble y OtroMyMessageBubble en función del índice
                  return (index % 2 == 0) ? const OtroMyMessageBubble() : MyMessageBubble();
                },
              ),
            ),
            //caja de texto de mensaje
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
