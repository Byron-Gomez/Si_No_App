import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  
  List<Message> message = [
    Message(text: 'Que ondas', fromWho: FromWho.mine),
        Message(text: 'Ya regresaste', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage ( String text) async{
    
  }
}