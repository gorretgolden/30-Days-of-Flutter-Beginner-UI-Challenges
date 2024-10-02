import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thirty_days_beginner_ui_basics/day5.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: GestureDetector(

                    onTap: (){ //Adding skip ability to login page
                      Get.to( const ValidatedLoginPage());
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.orange, fontSize: 18),
                    ),
                  )),
            ),
            //Adding a pageview design
            Expanded(
                child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                //updating the page index on page changes
                setState(() {
                  isLastPage = (index == 2);
                });
              },
              children: [
                //items of the pageview
                OnboardingWidget(
                  imagePath: 'assets/images/shop-easily.png',
                  title: "Shop Easily",
                  description:
                      "Browse thousands of our products from different brands",
                ),
                OnboardingWidget(
                  imagePath: 'assets/images/discounts.png',
                  title: "Exclussive Deals",
                  description: "Get access to amazing deals and discounts",
                ),
                OnboardingWidget(
                  imagePath: 'assets/images/delivery.png',
                  title: "Fast Delivery",
                  description:
                      "Enjoy quick and reliable delivery at your doorstep",
                )
              ],
            )),
            //Adding smooth page indicator
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const WormEffect(
                  dotColor: Colors.grey, activeDotColor: Colors.orange),
            ),

            const SizedBox(height: 50),
            //Adding next buttons
            isLastPage ? 
            Container(
              height: 50,
              decoration:  BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30)
               ),
               width: 300,
               child: const Center(child:  Text("Get Started",
               style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            ):
            GestureDetector(
              onTap: (){//Adding navigation to the next page
                _pageController.nextPage(
                  duration: const  Duration(microseconds: 600), curve: Curves.easeInOut);
              },
              child: Container(
                 height: 50,
              decoration:  BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30)
               ),
               width: 300,
               child: const Center(child:  Text("Next",
               style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
//Onboarding Widget

Widget OnboardingWidget(
    {required String imagePath,
    required String title,
    required String description}) {
  return Column(
    children: [
      Image.asset(imagePath, height: 300),
      const SizedBox(height: 10),
      Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Text(description,
          style: const TextStyle(fontSize: 17), textAlign: TextAlign.center)
    ],
  );
}
