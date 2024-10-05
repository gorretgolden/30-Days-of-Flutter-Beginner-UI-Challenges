import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/models/product_model.dart';
import 'package:thirty_days_beginner_ui_basics/widgets/product_card.dart';

class ProductsScreenUsingModels extends StatelessWidget {
  const ProductsScreenUsingModels({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
       Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
        Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
         Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
      
    ] ;
   
    return  Scaffold(
      appBar: AppBar(
        actions:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.search),
          )
        ],
        title: const Text("Products",
      
        style:TextStyle(fontWeight: FontWeight.bold)),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Number of items in the grid row
              childAspectRatio: 0.7, //Card size,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10

              ),
              itemCount:products.length ,
            itemBuilder: (context,index){
              final product = products[index];
              //Item builder returns the design of each grid item
              return ProductCard(product: product);

            },
          ),
          ),

    );
  }
}