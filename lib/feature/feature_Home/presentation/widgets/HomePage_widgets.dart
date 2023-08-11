import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Appbar() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Image.asset("lib/assets/Combined_Shape.png")),
          ),
          Image.asset("lib/assets/Title.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("lib/assets/Podcast_Icon.png"),
          ),
        ],
      ),
    ),
  );
}
