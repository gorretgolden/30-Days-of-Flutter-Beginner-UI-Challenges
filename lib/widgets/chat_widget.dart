import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/models/chat_model.dart';

class ChatWidget extends StatelessWidget {
  final ChatModel chat;
  const ChatWidget({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Adding a sized box for padding
        const SizedBox(height: 10),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(chat.profileImage),
          ),
          title: Text(
            //chat username
            chat.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
               fontSize: 19,
               color: Colors.white
               ),
          ),
          subtitle: Text(
            //chat message
            chat.lastMessage,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            //displaying the color based on whether the message was read
            style: TextStyle(
                color: chat.isRead ? Colors.grey : Colors.green, fontSize: 17),
          ),
          trailing: Text(
              //time since
              chat.time,
               style: TextStyle(
                color: chat.isRead ? Colors.grey : Colors.green, fontSize: 14),
            
              ),
        ),
        //Adding a divider
        Divider(color: Colors.grey.withOpacity(0.1))
      ],
    );
  }
}
