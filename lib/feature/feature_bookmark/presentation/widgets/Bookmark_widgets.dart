import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_bookmark/data/CollectionsData.dart';

Widget CollectionsWidget(int index, BuildContext context) {
  return Row(
    children: [
      Visibility(
        visible: index == 0,
        child: const SizedBox(
          width: 25,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width / 2.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child:
                      Image.asset(collectionsData[index]["image"] as String)),
              Center(
                child: Positioned(
                  bottom: 0,
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    collectionsData[index]["title"] as String,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget bookmark_title(
    {
      required String title,
      FontWeight? fontWeight = FontWeight.normal,
       double? fontSize = 37
       }) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 32, top: 8),
        child: Text(
         title,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    ],
  );
}
