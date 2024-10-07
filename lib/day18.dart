import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/models/notification.dart';
import 'package:thirty_days_beginner_ui_basics/widgets/notifications_card.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  //Creating instances of the notification model using a list to store the notifications
  final List<NotificationModel> notifications = [
        NotificationModel(
        title: "Security",
        description: "You have updated your password",
        time: "1 minute ago",
        icon: Icons.security),
    NotificationModel(
        title: "New message",
        description: "You have received a new message from Golden",
        time: "3 hours ago",
        icon: Icons.message),
         NotificationModel(
        title: "Booking Request",
        description: "You have made a new booking request",
        time: "4 hours ago",
        icon: Icons.check_circle),
          NotificationModel(
        title: "Order Shipped",
        description: "Your order has been shipped and its on the way",
        time: "5 hours ago",
        icon: Icons.local_offer),
          NotificationModel(
        title: "December Promotions",
        description: "Get 30% off on all your December purchases",
        time: "6 hours ago",
        icon: Icons.local_offer),
          NotificationModel(
        title: "Black Friday",
        description: "Get 20% off on friday purchases",
        time: "7 hours ago",
        icon: Icons.local_offer)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications",
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return NotificationsCard(notification: notification);
          }),
    );
  }
}
