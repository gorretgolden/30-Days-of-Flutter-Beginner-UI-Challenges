import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalListViewBuilder extends StatelessWidget {
  const HorizontalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    //list of network images
    List <String> imageUrls = [
       'https://img.freepik.com/free-photo/dinner-table-with-foods-soft-drinks-restaurant_114579-3319.jpg?t=st=1725646283~exp=1725649883~hmac=a4f4a60d278381c97d12de7bba9d334687007aa1bed8a9c25916d3475e3920ec&w=1060',
    'https://img.freepik.com/free-photo/healthy-lunch-table-restaurant_140725-6523.jpg?t=st=1725646315~exp=1725649915~hmac=ae95e18012233302f350c3a609253a3c9c0a543d30086e7cab5818ef82991b54&w=1060',
    'https://img.freepik.com/free-photo/close-up-appetizing-ramadan-meal_23-2151182453.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012',
    'https://img.freepik.com/free-photo/eid-al-fitr-celebration-with-delicious-food_23-2151205170.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012',
    'https://img.freepik.com/free-photo/eid-al-fitr-celebration-with-delicious-food_23-2151205169.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal ListView Builder",
        style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 300.0,
          child: ListView.builder(
            itemCount: imageUrls.length,
            scrollDirection: Axis.horizontal, //enables images to scroll in  a horizontal direction
            itemBuilder: (context,index){
           
            return Container(
              height: 200.0,
              width: 150.0,
              margin: const EdgeInsets.all(10.0), //margin around each image
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage(
                  imageUrls[index]
                 
                ),
                fit: BoxFit.cover //enables images fill the whole container
                ),
              )
            );
          }),
          
        ),

      ),
    );
  }
}