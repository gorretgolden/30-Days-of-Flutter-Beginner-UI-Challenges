import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/models/notification.dart';

class NotificationsCard extends StatelessWidget {
  final NotificationModel notification;
  const NotificationsCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Adding padding left,top and right around the card
      padding: const EdgeInsets.only(left: 13,right:13,top:5
      ),
      child: Card(
        elevation: 2,
  
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: ListTile(
          leading:  Icon(
            notification.icon,
            color: Colors.green.withOpacity(0.8),
            size: 28,
          ),
          title: Text(
            notification.title,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
          subtitle: Column(
            //left aligning the items in the column
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(notification.description,
                  style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 4),
              Text(
                notification.time,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
