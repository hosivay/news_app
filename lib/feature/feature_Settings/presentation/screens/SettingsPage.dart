import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_Home/presentation/widgets/HomePage_widgets.dart';
import 'package:news_app/feature/feature_Settings/presentation/widgets/SettingsItem.dart';
import 'package:news_app/feature/feature_bookmark/presentation/widgets/Bookmark_widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Appbar(
                  appbarBookmark: true, appbarSearch: true, showTitle: false),
              Row(
                children: [
                  bookmark_title(
                    title: "Settings",
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              settingsItem(
                icon: "person.png",
                title: "Profile settings",
                subtitle: "Settings regarding your profile",
              ),
              settingsItem(
                icon: "newspaper.png",
                title: "News settings",
                subtitle: "Choose your favourite topics",
              ),
              settingsItem(
                icon: "bell.png",
                title: "Notifications",
                subtitle: "When would you like to be notified",
              ),
              settingsItem(
                icon: "folder.png",
                title: "Subscriptions",
                subtitle: "Currently, you are in Starter Plan",
              ),
              title_iconArrowRight(
                  title: "Other",
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  hideArrowIcon: true),
                   settingsItem(
                icon: "bug.png",
                title: "Bug report",
                subtitle: "Report bugs very easy",
              ),
               settingsItem(
                icon: "share.png",
                title: "Share the app",
                subtitle: "Share on social media networks",
              ),
              const SizedBox(height: 170,)
            ],
          ),
        ),
      ),
    );
  }
}
