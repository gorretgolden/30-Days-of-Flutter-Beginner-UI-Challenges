import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirty_days_beginner_ui_basics/day15.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          backgroundColor: Colors.green,
        ),
        //wrapping the body with a singlechildscrollview
        body:  SingleChildScrollView(
          child: Column(
            children: [
              //Adding some padding at the top
               const SizedBox(height: 20),
              //Adding the user profile picture
              const Center(
                //Centering the profile
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/confident-business-woman-portrait-smiling-face_53876-137693.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012&semt=ais_hybrid"),
                ),
              ),
              const SizedBox(height: 20),
              //Adding the user name
              const Text(
                "Gorret Golden",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto-Bold"),
              ),
              const SizedBox(height: 5),
              //Adding user email address
              const Text(
                "gorretgolden@gmail.com",
                style: TextStyle(
                    fontSize: 17, 
                    fontWeight: FontWeight.w300
                    ),
              ),
              const SizedBox(height: 15),
              //Adding a divider
              const Divider(),
              //Profile settings
              const ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                  size: 28,
                ),
                title: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                //Adding a widget (Icon) at the end/right of the listTile
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              //Adding a divider
              const Divider(),
              //Change password options
              const ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.green,
                  size: 28,
                ),
                title: Text(
                  "Change Password",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                //Adding a widget (Icon) at the end/right of the listTile
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              //Adding a divider
              const Divider(),
              //Adding a notifications option
              const ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.green,
                  size: 28,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                //Adding a widget (Icon) at the end/right of the listTile
                trailing: Icon(Icons.arrow_forward_ios),
              ),
             const Divider(),

              //Adding Favorite Products
         
              ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.green,
                  size: 28,
                ),
                //Adding navigation to favorite products screen
                onTap: (){
                  Get.to(FavoriteProductsScreen());
                
                },
                title: const Text(
                  "Favorite Products",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                //Adding a widget (Icon) at the end/right of the listTile
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              //Adding a divider
             const  Divider(),
          
              //Adding a help & support section
          
              const ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                  size: 28,
                ),
                title: Text(
                  "Help & Support",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                //Adding a widget (Icon) at the end/right of the listTile
                trailing: Icon(Icons.arrow_forward_ios),
              ),
             const Divider(),
              //Adding a logout option
             const ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.green,
                  size: 28,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ));
  }
}
