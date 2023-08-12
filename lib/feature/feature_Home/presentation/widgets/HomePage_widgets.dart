// ignore: file_names
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Appbar({bool? showTitle = true}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
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
        Visibility(
          visible: showTitle!,
          child: Image.asset(
            "lib/assets/Title.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("lib/assets/Podcast_Icon.png"),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget BannerWidget(int index, BuildContext context) {
  return Stack(
    children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("lib/assets/NewsBanner${index + 1}.png",
              width: MediaQuery.sizeOf(context).width / 1.2)),
      const Positioned(
          top: 40,
          left: 35,
          right: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TECHNOLOGY",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "3 min ago",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 9),
              )
            ],
          )),
      Positioned(
          bottom: 45,
          left: 35,
          right: 35,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 14),
                child: Text(
                  "Microsoft launches a deepfake detector tool ahead of US election",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/assets/chat_icon.png",
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    Image.asset(
                      "lib/assets/Bookmarks_Icon.png",
                      color: Colors.white,
                    ),
                    const Spacer(),
                    Image.asset(
                      "lib/assets/arrow-redo-outline.png",
                    ),
                  ],
                ),
              )
            ],
          ))
    ],
  );
}
