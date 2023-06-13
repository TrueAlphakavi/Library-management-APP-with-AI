import 'package:flutter/material.dart';
import 'dart:ui_web';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class profile_info extends StatefulWidget {
  const profile_info({super.key});

  @override
  State<profile_info> createState() => _profile_infoState();
}

class _profile_infoState extends State<profile_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.only(top: 12, left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nancy wheeler',
                    filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'user - id',
                    filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email - id',
                    filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("List of books Rented"),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 150,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 150,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 150,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 150,
                    width: 120,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
