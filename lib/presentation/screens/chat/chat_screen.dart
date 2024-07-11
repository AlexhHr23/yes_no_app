import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_mesagge_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_nubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/cowboybebop/images/b/b8/Spike_CBJ9412.jpg/revision/latest?cb=20210924205007&path-prefix=es'),
          ),
        ),
        title: const Text('Spike🏳'),
      ),
      body: _ChatView(),
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
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
