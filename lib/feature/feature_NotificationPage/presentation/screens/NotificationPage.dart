import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_Home/presentation/widgets/HomePage_widgets.dart';
import 'package:news_app/feature/feature_NotificationPage/presentation/widgets/NotificationWidget.dart';
import 'package:news_app/feature/feature_bookmark/presentation/widgets/Bookmark_widgets.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Appbar(appbarBookmark: true, appbarSearch: true, showTitle: false),
          Row(
            children: [
              bookmark_title(
                title: "Unread",
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          notificationWidget(
              context: context,
              title: "TECHNOLOGY",
              text:
                  "Insurtech startup PasarPolis gets \$54 million — Series B"),
          notificationWidget(
              context: context,
              title: "BUSSINES",
              text: "Hypatos gets \$11.8M for a deep learning approach"),
          title_iconArrowRight(
              title: "13 April, 2020",
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w300,
              hideArrowIcon: true),
            
               notificationWidget(
              context: context,
              title: "BUSSINES",
              text: "The IPO parade continues as Wish files, Bumble targets continues as"),
              notificationWidget(
              context: context,
              title: "BUSSINES",
              text: "The IPO parade continues as Wish files, Bumble targets continues as"),
              notificationWidget(
              context: context,
              title: "BUSSINES",
              text: "The IPO parade continues as Wish files, Bumble targets continues as"),
        ],
      ),
    )));
  }
}
