import 'package:flutter/material.dart';
import 'package:web_app/Profile.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/drop_down.dart';
import 'package:web_app/responisive.dart';
import 'package:web_app/searchfield.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () {},
            // onPressed: context.read<Controller>().controlMenu,
            icon: Icon(
              Icons.menu,
              color: textColor.withOpacity(0.5),
            ),
          ),
        Expanded(child: SearchField()),
        drop_down(),
        // ProfileInfo()
      ],
    );
  }
}
