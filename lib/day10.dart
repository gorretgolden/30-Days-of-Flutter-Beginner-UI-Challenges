import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirty_days_beginner_ui_basics/screens/favourites_screen.dart';
import 'package:thirty_days_beginner_ui_basics/screens/home_screen.dart';

class DrawerNavigationBar extends StatelessWidget {
  const DrawerNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Gorret Golden",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: const Text(
                "gorret@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://img.freepik.com/free-photo/confident-business-woman-portrait-smiling-face_53876-137693.jpg?t=st=1725946878~exp=1725950478~hmac=f56f30b7eb243cbad8321a68b29d0721aefc353591690acf6b512e94ed9d3cc4&w=1480",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                  color: const Color.fromARGB(255, 242, 170, 194),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://img.freepik.com/free-photo/ocean-blue-copy-space-abstract-paper-waves_23-2148319152.jpg?t=st=1725948387~exp=1725951987~hmac=4ce4c3a16cd16f4668c3605ac8703b479701fc30d161464df156f65bfcf06ad7&w=1800",
                      ),
                      fit: BoxFit.cover)),
            ),
            _drawerTileItem(
                title: 'Home',
                icon: Icons.home,
                backgroundColor: Colors.green.shade200,
                onTap: (){
                   //Adding navigation to home screen
               Get.to(const HomeScreen());
                }
                ),
            _drawerTileItem(
                title: 'Favourites',
                icon: Icons.favorite,
                backgroundColor: Colors.purple.shade200,
                onTap: () {
                  //Adding navigation to favourite screen
                  Get.to(const FavouritesScreen());
                }),
            _drawerTileItem(
                title: 'Orders',
                icon: Icons.category_rounded,
                backgroundColor: Colors.pink.shade200),
            _drawerTileItem(
                title: 'Notifications',
                icon: Icons.notifications,
                backgroundColor: Colors.greenAccent.shade200),
            _drawerTileItem(
                title: 'Account',
                icon: Icons.account_box,
                backgroundColor: Colors.blue.shade200),
            const Divider(),
            _drawerTileItem(
                title: 'Settings',
                icon: Icons.settings,
                backgroundColor: Colors.orange.shade200),
            _drawerTileItem(
                title: 'Logout',
                icon: Icons.logout_sharp,
                backgroundColor: Colors.black)
          ],
        ),
      ),
    );
  }
}

//Drawer List tile component
Widget _drawerTileItem(
    {required String title,
    required IconData icon,
    required Color backgroundColor,
    VoidCallback? onTap //ontap method is optional
    }) {
  return ListTile(
    onTap: onTap,
    leading: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
      child: Icon(
        icon,
        color: Colors.white,
        size: 16,
      ),
    ),
    title: Text(title),
  );
}
