import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomTab({required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // print(screenWidth);
    // print(screenWidth * 0.01);
    return Tab(
      child: Text(
        this.title,
        style: TextStyle(fontSize: screenWidth > 1413 ? 19.17 : 13.44, color: Colors.black),
      ),
    );
  }
}
