import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header (Profile Section)
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("johndoe@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.example.com/images/profile.jpg'), // Replace with an actual image URL
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),

          // Title Section
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Go to home screen'),
            onTap: () {
              // Handle home navigation
              Navigator.pop(context);
            },
          ),

          // Support Section
          ListTile(
            leading: Icon(Icons.support),
            title: Text('Support'),
            subtitle: Text('Get help and support'),
            onTap: () {
              // Handle support navigation
              Navigator.pop(context);
              // You can navigate to a new screen for support
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Support clicked")));
            },
          ),

          // Help Section
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            subtitle: Text('FAQs and assistance'),
            onTap: () {
              // Handle help navigation
              Navigator.pop(context);
              // You can navigate to a new screen for help
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Help clicked")));
            },
          ),
        ],
      ),
    );
  }
}
