
import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/day10.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //the drawer only appears if an app bar is added
        appBar:  AppBar(
          title: const Text("Favourites"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        drawer: const DrawerNavigationBar(),
        body: const Center(child: Text("Favourites")),
      ),
    );
  }
}