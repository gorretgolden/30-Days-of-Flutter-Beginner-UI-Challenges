import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatelessWidget {
  final Map<String,dynamic> product;
  
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //Returning a card widget 
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          //Adding the product image
          ClipRRect(
            borderRadius:const BorderRadius.vertical(top:Radius.circular(12)),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Image.network(
                  product['imagePath'],
                  height: 150,
                  width: double.infinity,
                  fit:BoxFit.cover
                ),
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                      //Adding a product name
                      Text(
                        product['name'],
                        style:const TextStyle(
                          fontSize:16,
                          fontWeight:FontWeight.bold

                        )
                      ),
                      const SizedBox(height:8),
                      //Adding the product price
                       Text(
                        "UGX ${product['price']}", //adding ugx with string interpolation
                        style: TextStyle(
                          fontSize:17,
                          color:Colors.grey[600],
                          fontWeight:FontWeight.bold

                        )
                      ),
                        const SizedBox(height:8),
                        //Adding the product rating
                        RatingBarIndicator(
                          rating:product['rating'],
                          itemBuilder: (context,index) =>
                           const Icon(
                                Icons.star,
                              color:Colors.amber
                            ),
                            itemCount: 5, 
                            itemSize:20.0,
                            direction:Axis.horizontal
                
                        )

                     ]

                  )
                )
              ]

            )

          )

        ],), 
    );
  }
}