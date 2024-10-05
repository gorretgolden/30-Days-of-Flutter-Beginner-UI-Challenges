import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Visa Front Card Design",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 200,
          width: 350,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 8, spreadRadius: 1)
              ],
              //Adding a gradient effect
              gradient: LinearGradient(
                  colors: [Colors.orange.shade200, Colors.orange.shade800],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          //Adding a column layout
          child: Column(
              //Enabling items to be aligned from the start of the card
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Adding a row layout for the credit card text and company logo
                Row(
                  //Adding space between the row children
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Adding a credit card text
                    const Text('Credit Card',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic)),
                    //Adding a card company logo (static image)
                    Image.asset("assets/images/logo.png", width: 40)
                  ],
                ),
                //Adding a column layout for other items
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Adding an emv chip image (static image)
                    SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/images/emv.png')),
                    //Adding card number
                    const Text("2314 5631 2310 1209 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            letterSpacing: 2,
                            fontFamily: 'Roboto-Bold',
                            shadows: [
                              Shadow(
                                  offset: Offset(4, 4), //Shadow position
                                  blurRadius: 10.0, //Blur intensity
                                  color: Colors.black38 //Color of the shadow
                                  )
                            ]))
                  ],
                ),
                            //Adding some space at the top
                    const SizedBox(height: 3),
                //Wrapping the row with a column
                //Adding a row layout
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      //Adding expiration date
                      RichText(
                          text: TextSpan(
                              text: 'Valid Till ',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 14.0),
                              children: const [
                            TextSpan(
                              text: ' 31st/12/2028',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            )
                          ])),
                    ]),

                    //Adding some space at the top
                    const SizedBox(height: 3),
                    //Cardholder name and visa logo
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Card Holder Name
                          const Text('JOHN DOE ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                              )),
                          //Adding a visa logo
                          Image.asset("assets/images/visa-logo.png", width: 60)
                        ])
                  ],
                )
              ]),
        )));
  }
}
