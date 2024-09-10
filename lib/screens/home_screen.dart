

import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/day10.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerNavigationBar(),
  

    );
  }
}