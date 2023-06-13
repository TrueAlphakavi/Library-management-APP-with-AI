import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/books.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/custom_appbar.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomAppbar(),
            SizedBox(
              height: appPadding,
            ),
            books()
          ])),
    );
  }
}
