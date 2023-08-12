import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_Search/data/SeachData.dart';

Widget VideoList(int index) {
  return Row(
    children: [
      index == 0
          ? const SizedBox(
              width: 20,
            )
          : const SizedBox(
              width: 1,
            ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            Image.asset(
              searchData[index]["image"] as String,
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: SizedBox(
                width: 180,
                child: Text(
                  searchData[index]["title"] as String,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Image.asset(
                "lib/assets/play_circle_outline.png",
              ),
            )
          ],
        ),
      ),
    ],
  );
}
