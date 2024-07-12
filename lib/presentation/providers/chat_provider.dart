import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola spike!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del espacio?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBotom();
  }

  Future<void> moveScrollToBotom () async {

    await Future.delayed( const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
