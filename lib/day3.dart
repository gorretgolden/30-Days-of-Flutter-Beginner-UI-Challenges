import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/constants/constants.dart';

class GridViewGallery extends StatelessWidget {
  const GridViewGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text("GridView Gallery",style: TextStyle(fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2, //No of items in each row
            crossAxisSpacing: 10.0, // horizontal spacing between grid items
            mainAxisSpacing: 10.0 ,// vertical spacing between grid items
            childAspectRatio: 0.8 //aspect ratio to make images squared, this be changed 
            //depending on the design need eg 0.8
             ), 
          itemCount:imageUrls.length ,//item count returns total no of items to be displayed in the grid view
          itemBuilder: (context,index){
            //item builder returns the styled widget item for the grid view
            return ClipRRect( //
               borderRadius: BorderRadius.circular(15.0),
               child: Image.network(
                imageUrls[index],
                fit:  BoxFit.cover,
               ),
            );
          }) ,
        ),

    );
  }
}