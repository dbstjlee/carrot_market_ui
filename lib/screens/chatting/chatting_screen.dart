import 'package:carrot_market_ui/models/chatMessage.dart';
import 'package:carrot_market_ui/screens/chatting/components/chat_container.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
              (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
