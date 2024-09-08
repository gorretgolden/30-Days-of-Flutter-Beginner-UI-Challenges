import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/day1.dart';
import 'package:thirty_days_beginner_ui_basics/day2.dart';
import 'package:thirty_days_beginner_ui_basics/day3.dart';
import 'package:thirty_days_beginner_ui_basics/day4.dart';
import 'package:thirty_days_beginner_ui_basics/day5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '30 Days Beginner UI Basics',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const ValidatedLoginPage()
    );
  }
}

