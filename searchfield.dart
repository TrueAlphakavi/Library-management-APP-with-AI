import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search for Books",
            helperStyle: TextStyle(
              color: textColor.withOpacity(0.5),
              fontSize: 15,
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(
              Icons.search,
              color: textColor.withOpacity(0.5),
            )),
      ),
    );
  }
}
