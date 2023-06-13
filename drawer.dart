import 'package:flutter/material.dart';
import 'package:web_app/gpt/gpt_chat_page.dart';
import 'package:web_app/profile_info.dart';
import 'package:web_app/snow/chat_screen.dart';
import 'package:web_app/main.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade100,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const profile_info()));
              },
              // Handle onTap action},
              child: Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/nancy1.jpg'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
            "Hi Nancy wheeler !",
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading:
                Icon(Icons.account_circle_outlined), // Add the desired icon
            title: Text('Account details'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const profile_info()));
              // Handle onTap action
            },
          ),
          ListTile(
            leading: Icon(
                Icons.collections_bookmark_outlined), // Add the desired icon
            title: Text('Collections'),
            onTap: () {
              // Handle onTap action
            },
          ),
          ListTile(
            leading:
                Icon(Icons.favorite_border_outlined), // Add the desired icon
            title: Text('Favourites'),
            onTap: () {
              // Handle onTap action
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined), // Add the desired icon
            title: Text('Cart'),
            onTap: () {
              // Handle onTap action
            },
          ),
          ListTile(
            leading:
                Icon(Icons.messenger_outline_sharp), // Add the desired icon
            title: Text('Chat with GPT'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
          ),
          // DrawerListTile(
          //     title: 'Chat with our GPT',
          //     svgSrc: 'assets/icons/Statistics.svg',
          //     tap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => chat_screen()));
          //     }),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 32),
          //   child: Divider(
          //     color: Colors.grey,
          //     thickness: 0.2,
          //   ),
          // ),

          ListTile(
            leading: Icon(Icons.settings), // Add the desired icon
            title: Text('Settings'),
            onTap: () {
              // Handle onTap action
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp), // Add the desired icon
            title: Text('Logout'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          // DrawerListTile(
          //     title: 'Logout',
          //     svgSrc: 'assets/icons/Logout.svg',
          //     tap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => LoginPage()),
          //       );
          //     }),
        ],
      ),
    );
  }
}
