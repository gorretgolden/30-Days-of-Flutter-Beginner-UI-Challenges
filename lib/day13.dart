// import 'package:flutter/material.dart';
// import 'package:thirty_days_beginner_ui_basics/constants/constants.dart';
// import 'package:thirty_days_beginner_ui_basics/widgets/product_card.dart';

// class ProductsScreenUsingLists extends StatelessWidget {
//   const ProductsScreenUsingLists({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Products",
//         style:TextStyle(fontWeight: FontWeight.bold)),),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, //Number of items in the grid row
//               childAspectRatio: 0.7, //Card size,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10

//               ),
//               itemCount:products.length ,
//             itemBuilder: (context,index){
//               final product = products[index];
//               //Item builder returns the design of each grid item
//               return ProductCard(product: product);

//             },
//           ),
//           ),

//     );
//   }
// }