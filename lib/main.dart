import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirty_days_beginner_ui_basics/day12.dart';
import 'package:thirty_days_beginner_ui_basics/day13.dart';
import 'package:thirty_days_beginner_ui_basics/day14.dart';
import 'package:thirty_days_beginner_ui_basics/day15.dart';
import 'package:thirty_days_beginner_ui_basics/day16.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your 
  // application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '30 Days Beginner UI Basics',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: 
        ColorScheme.fromSeed(
          seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:  const SettingsScreen()
    );
  }
}

