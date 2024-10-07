// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//updated the notification model to avoid clashes with the Notification Class
class NotificationModel {
  final String title;
  final String description;
  final String time;
  final IconData icon;
  NotificationModel({
    required this.title,
    required this.description,
    required this.time,
    required this.icon,
  });
}
