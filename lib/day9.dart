import 'package:flutter/material.dart';

class ContactListWithUserImage extends StatelessWidget {
  const ContactListWithUserImage({super.key});

  @override
  Widget build(BuildContext context) {
     final List<Map<String, String>> contacts = [
      {'name': 'Jane Doe', 'phone': '0751446653','image':'https://img.freepik.com/free-photo/medium-shot-smiley-woman-posing_23-2149157721.jpg?t=st=1725868550~exp=1725872150~hmac=a5cf7d6c490a56859e0e752d9b9a14fe637e933134c811aff6c55df8840b072d&w=900'},
      {'name': 'Jane Smith', 'phone': '0723987654','image':'https://img.freepik.com/free-photo/confident-african-businesswoman-smiling-closeup-portrait-jobs-career-campaign_53876-143280.jpg?t=st=1725870418~exp=1725874018~hmac=2edc65890b4241f058674e7978f95d5fbe97a3e82b4245e9c08e3135c015a427&w=2000'},
      {'name': 'Martha Jordan', 'phone': '0789246810','image':'https://img.freepik.com/free-photo/low-angle-smiley-female_23-2148480664.jpg?t=st=1725870469~exp=1725874069~hmac=0cd7a10009c9565609acf09254af84a7511ed35343d6cc0e97ea82e02e73a038&w=2000'},
      {'name': 'Polah Parker', 'phone': '0751112222','image':'https://img.freepik.com/free-photo/high-angle-happy-female_23-2148480698.jpg?t=st=1725870516~exp=1725874116~hmac=51577b9b16466f5e68ef6a02fb27777e6f809f14b96d4b00da28e8541b1c523a&w=2000'},
      {'name': 'Clare Kent', 'phone': '0753334444','image':'https://img.freepik.com/free-photo/low-angle-female-wondering_23-2148480666.jpg?t=st=1725870570~exp=1725874170~hmac=682c8783dd608f6396f93e074a321cd1a86907fbf143eaf0ee396fd8e8a1ed58&w=1480'},
      {'name': 'Bruce Wayne', 'phone': '0705555555','image':'https://img.freepik.com/free-photo/medium-shot-male-flight-attendant-posing_23-2150312701.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012&semt=ais_hybrid'},
      {'name': 'Mark Akello', 'phone': '0789246819','image':'https://img.freepik.com/free-photo/smiley-handsome-man-holding-cup-coffee_23-2148448906.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012&semt=ais_hybrid'},
      {'name': 'Patience Kalungi', 'phone': '0751112232','image':'https://img.freepik.com/free-photo/medium-shot-smiley-woman-posing_23-2149157617.jpg?t=st=1725869693~exp=1725873293~hmac=293f4d139859faf769f15d07ba46b616230fb47e0559efd1c38117442120379c&w=900'},
      {'name': 'Clare Shama', 'phone': '0753334440','image':'https://img.freepik.com/free-photo/medium-shot-smiley-woman-posing_23-2149157617.jpg?t=st=1725869693~exp=1725873293~hmac=293f4d139859faf769f15d07ba46b616230fb47e0559efd1c38117442120379c&w=900'},
      {'name': 'Brinah Aamal', 'phone': '0705555505','image':'https://img.freepik.com/free-photo/medium-shot-smiley-woman-posing_23-2149157617.jpg?t=st=1725869693~exp=1725873293~hmac=293f4d139859faf769f15d07ba46b616230fb47e0559efd1c38117442120379c&w=900'},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact List With User Image",
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
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: contacts.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            String name = contacts[index]['name']!;
            String phone = contacts[index]['phone']!;
            String image = contacts[index]['image']!;
     
            return ListTile(
              leading: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover
                  )                     
                ),
               
              ),
              title: Text(name),
              subtitle: Text(phone),
               trailing:const Icon(Icons.more_horiz)
            );
          },
        ),
      ),
    );
  }
}