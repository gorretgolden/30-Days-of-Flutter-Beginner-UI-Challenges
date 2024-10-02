import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/constants/constants.dart';

class HorizontalListViewBuilder extends StatelessWidget {
  const HorizontalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {

   
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