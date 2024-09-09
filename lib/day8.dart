import 'dart:math';

import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {'name': 'John Doe', 'phone': '0751446653'},
      {'name': 'Jane Smith', 'phone': '0723987654'},
      {'name': 'Michael Jordan', 'phone': '0789246810'},
      {'name': 'Peter Parker', 'phone': '0751112222'},
      {'name': 'Clark Kent', 'phone': '0753334444'},
      {'name': 'Bruce Wayne', 'phone': '0705555555'},
      {'name': 'Mary Akello', 'phone': '0789246819'},
      {'name': 'Patience Kalungi', 'phone': '0751112232'},
      {'name': 'Clare Shama', 'phone': '0753334440'},
      {'name': 'Brinah Aamal', 'phone': '0705555505'},
    ];

    //function to generate random colors
    Color generateRandomColor() {
      final Random random = Random();
      return Color.fromARGB(
          255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    }

    //function to get contact name initials
    String getContactInitials(String name) {
      List<String> parts = name.split(" ");
      String initials =
          parts.length > 1 ? parts[0][0] + parts[1][0] : parts[0][0];
      return initials.toUpperCase();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: contacts.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            String name = contacts[index]['name']!;
            String phone = contacts[index]['phone']!;
            Color avatarColor = generateRandomColor();
            String contactInitials = getContactInitials(name);
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: avatarColor, //adding random bg colors
                child: Text(contactInitials,
                    style: const TextStyle(color: Colors.white)),
              ),
              title: Text(name),
              subtitle: Text(phone),
            );
          },
        ),
      ),
    );
  }
}
