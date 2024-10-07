import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:  [
            //Adding account settings
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blue..withOpacity(0.5),
              ),
              title: const Text(
                "Account Settings",
                style: TextStyle(fontSize: 16),
              ),
              subtitle:
                  const Text("Manage your account", style: TextStyle(fontSize: 14)),
            ),
            //Adding a divider widget
            const Divider(),

            //Adding  settings for notifications
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.green.withOpacity(0.5),
              ),
              title: const Text(
                "Notifications Settings",
                style: TextStyle(fontSize: 16),
              ),
              subtitle: const Text("Manage your notification preferences",
                  style: TextStyle(fontSize: 14)),
            ),
            //Adding a divider widget
            const Divider(),

            //Adding theme settings
            ListTile(
              leading: Icon(
                Icons.brightness_6,
                color: Colors.black.withOpacity(0.5),
              ),
              title: const Text(
                "Theme Settings",
                style: TextStyle(fontSize: 16),
              ),
              subtitle:
                  const Text("Change your app theme", style: TextStyle(fontSize: 14)),
            ),
            //Adding a divider widget
            const Divider(),

            //Adding privacy settings
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.brown.withOpacity(0.5),
              ),
              title: const Text(
                "Privacy Settings",
                style: TextStyle(fontSize: 16),
              ),
              subtitle: const Text("Manage your privacy settings",
                  style: TextStyle(fontSize: 14)),
            ),
            //Adding a divider widget
            const Divider(),

            //Adding about app
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.deepPurpleAccent.withOpacity(0.5),
              ),
              title: const Text(
                "About App",
                style: TextStyle(fontSize: 16),
              ),
              subtitle: const Text("Learn more about this app",
                  style: TextStyle(fontSize: 14)),
            ),
            //Adding a divider widget
            const Divider(),

            //Adding terms of use
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.orange.withOpacity(0.5)
              ),
              title: const Text(
                "Terms of Use",
                style: TextStyle(fontSize: 16),
              ),
              subtitle: const Text("Understand our terms of use",
                  style: TextStyle(fontSize: 14)),
            ),
            //Adding a divider widget
            const Divider(),
            //Adding a logout section
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(0.5),
              ),
              //Adding dialog on logout
              onTap: (){
                showDialog(
                  context: context, 
                  builder: (context)=>AlertDialog(
                    title: const Text("Logout"),
                    content: const Text("Are you sure you want to logout?"),
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        child: const Text('Cancel')
                        ),
                         TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        child: const Text('Logout')
                        )
                    ],
                  ));
              },
              
              title: const Text(
                "Logout",
                style: TextStyle(fontSize: 16),
              ),
             
            ),
            //Adding a divider widget
            const Divider()
          ],
        ),
      ),
    );
  }
}
