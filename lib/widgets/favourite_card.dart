// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:thirty_days_beginner_ui_basics/models/product_model.dart';

class FavouriteProductCard extends StatelessWidget {

  final Product product;
  final VoidCallback onRemove;
  const FavouriteProductCard({
    Key? key,
    required this.product,
    required this.onRemove,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:2,
      margin:const EdgeInsets.symmetric(vertical:8),
      child:ListTile(
        leading: Image.network(
          product.imagePath,
          height:70,
          width:70,
          fit:BoxFit.cover
        ),
        title:Text(product.name,style:const TextStyle(fontWeight:FontWeight.bold)),
        subtitle: Text(
          'UGX ${product.price}'
        ),
        trailing:IconButton(
          icon:const Icon(Icons.favorite,color:Colors.green),
          onPressed:onRemove
        )
      )
    );
  }
}
