import 'package:flutter/material.dart';
import 'package:si_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();

  // Lista de mensajes en el chat, con dos mensajes predefinidos
  List<Message> messagesList = [
    Message(text: 'mensaje predefinido 1', fromWho: FromWho.mine),
    Message(text: 'mensaje predefinido 2', fromWho: FromWho.mine),
  ];

  // Método para enviar un mensaje
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    // Crea un nuevo mensaje del usuario y lo agrega a la lista
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messagesList.add(newMessage);

    // Verifica si el mensaje termina con '?' y obtiene una respuesta si es así
    if (text.endsWith('?')) {
      await otherReply();
    }

    // Notifica a los oyentes del cambio en la lista de mensajes
    notifyListeners();

    // Mueve el scroll hasta el fondo
    moveScrollToBottom();
  }

  // Método para mover el scroll al fondo
  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  // Método para obtener una respuesta de otro origen
  Future<void> otherReply() async {
    // Obtiene una respuesta utilizando el servicio GetYesNoAnswer
    final otherMessage = await getYesNoAnswer.getAnswer();

    // Agrega la respuesta a la lista de mensajes
    messagesList.add(otherMessage);

    // Notifica a los oyentes del cambio en la lista de mensajes
    notifyListeners();

    // Mueve el scroll hasta el fondo
    moveScrollToBottom();
  }
}
