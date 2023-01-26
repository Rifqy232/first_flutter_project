import 'package:flutter/material.dart';

import '../widgets/chat_tile.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        ChatTile(
          imageUrl: 'https://picsum.photos/200',
          name: "Alex",
          message: "Hello, how are you man?",
          time: "19.45",
          isRead: true,
          isSent: false,
          unreadMessageCount: 0,
        ),
        ChatTile(
          imageUrl: 'https://picsum.photos/300',
          name: "Dion",
          message: "Let's go, we're in a hurry",
          time: "20.18",
          isRead: true,
          isSent: true,
          unreadMessageCount: 0,
        ),
        ChatTile(
          imageUrl: 'https://picsum.photos/100',
          name: 'Dian',
          message: 'Where are you?',
          time: '19.48',
          isRead: false,
          isSent: false,
          unreadMessageCount: 1,
        ),
      ],
    );
  }
}

