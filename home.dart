import 'package:flutter/material.dart';
import 'package:web_app/Dashboard_content.dart';
import 'package:web_app/constants.dart';

import 'package:web_app/drawer.dart';
import 'package:web_app/responisive.dart';
import 'package:web_app/snow/chat_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                child: DrawerMenu(),
              ),
            Expanded(
              flex: 6,
              child: DashboardContent(),
            ),
            Expanded(
              flex:3,
              child: chat_screen(),
            ),
          ],

        ),
      ),
    );
  }
}
