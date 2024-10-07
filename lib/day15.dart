import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/models/product_model.dart';
import 'package:thirty_days_beginner_ui_basics/widgets/favourite_card.dart';

class FavouriteProductsScreen extends StatefulWidget {

   FavouriteProductsScreen({super.key});

  @override
  State<FavouriteProductsScreen> createState() => _FavouriteProductsScreenState();
}

class _FavouriteProductsScreenState extends State<FavouriteProductsScreen> {
  List <Product> favouriteProducts = [
      Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
       Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
        Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),
         Product(name: "Hand Bag",price: 50000,rating:4.0,imagePath: 'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Products", 
        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        backgroundColor: Colors.green,
        centerTitle: true,
        

        ),
        body:ListView.builder(
          itemCount:favouriteProducts.length,
          itemBuilder:(context,index){
            final product = favouriteProducts[index];
            return FavouriteProductCard(
                 product:product,
                 onRemove:(){

                  setState((){
                  favouriteProducts.removeAt(index);
                  //Adding a snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                   const  SnackBar(
                      backgroundColor:Colors.green,
                      content:Text(
                        'Product removed from favourites',
                        style: TextStyle(fontSize: 17),
                      ),
                      duration:Duration(
                        seconds:2
                      )
                    )
                  );
                  });
                 }
              

            );

          }

        )
    );
  }
}