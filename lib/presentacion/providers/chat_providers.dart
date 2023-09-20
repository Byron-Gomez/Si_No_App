import 'package:flutter/material.dart';
import 'package:si_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final getYesNoAnswer = GetYesNoAnswer();

  final ScrollController chatScrollController = ScrollController();
  
  List<Message> messagesList = [
    Message(text: 'mensaje predefinido 1', fromWho: FromWho.mine),
        Message(text: 'mensaje predefinido 2', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage ( String text) async{
    if(text.isEmpty)return;

    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messagesList.add(newMessage);
    if(text.endsWith('?')){
      await otherReply();
    }
    notifyListeners();
    moveSrollToBottom();
  }

    

   Future<void> moveSrollToBottom() async{
      await Future.delayed(const Duration(milliseconds: 100));
      chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
         duration: const Duration(milliseconds: 300), 
         curve: Curves.easeOut);
    }

    Future<void> otherReply() async {
      final otherMessage = await getYesNoAnswer.getAnswer();
      messagesList.add(otherMessage);
      notifyListeners();
      moveSrollToBottom();
    }
  }
