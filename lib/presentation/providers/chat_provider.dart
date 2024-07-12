import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola spike!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del espacio?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //TODO: Implementar método
  }
}
