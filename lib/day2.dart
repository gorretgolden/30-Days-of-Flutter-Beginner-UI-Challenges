import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/constants/constants.dart';

class VerticalListViewBuilder extends StatelessWidget {
  const VerticalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("Vertical ListView Builder",
        style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height, //making size box span the whole device screen,
          child: ListView.builder(
            itemCount: imageUrls.length,
            scrollDirection: Axis.vertical, //enables images to scroll in  a vertical direction
            itemBuilder: (context,index){
           
            return Container(
              height: 200.0, //Each Image will take up these container dimensions
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