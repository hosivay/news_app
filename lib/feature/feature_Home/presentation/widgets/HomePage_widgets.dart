// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Appbar(
    {bool? showTitle = true,
    bool? searchVersion = false,
    bool? appbarBookmark = false,
    bool? appbarSearch = false}) {
  String iconCheck() {
    if (appbarBookmark!) {
      return "lib/assets/searchicon_bookmark.png";
    } else if (appbarSearch!) {
      return "lib/assets/searchicon_searchPage.png";
    } else {
      return "lib/assets/Podcast_Icon.png";
    }
  }

  return Visibility(
      visible: !searchVersion!,
      replacement: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    "Virtual Reality",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(iconCheck()),
                ),
              ],
            ),
          ),
        ),
      ),
      child: Padding(
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
              child: Image.asset(iconCheck()),
            ),
          ],
        ),
      ));
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

// ignore: non_constant_identifier_names
Widget title_iconArrowRight(
    {required String title,
    double? fontSize = 14,
    Color? color = Colors.grey,
    FontWeight? fontWeight = FontWeight.normal
    }) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(35, 25, 35, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: color, fontSize: fontSize,fontWeight: fontWeight),
        ),
        const Icon(
          CupertinoIcons.arrow_right_circle,
          size: 20,
          color: Colors.grey,
        )
      ],
    ),
  );
}
