import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/constants/constants.dart';
import 'package:thirty_days_beginner_ui_basics/widgets/chat_widget.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //changing the background color of the scaffold body (dark theme)
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text("Chats",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatWidget(chat: chat);
      }),
    );
  }
}
