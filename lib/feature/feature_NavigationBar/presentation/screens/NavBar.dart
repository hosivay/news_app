import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_Home/presentation/screens/HomePage.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int currentIndex = 0;

  var listimage = [
    "Home_Icon.png",
    "Bookmarks_Icon.png",
    "Search_Icon.png",
    "Notifications_Icon.png",
    "Settings_Icon.png",
  ];

  var pages = [
    const HomePage(),
    const BookMarkPage(),
    const SearchPage(),
    const NotificationPage(),
    const SettingsPage()
  ];
  var appPageController = PageController();

  void _onTappedBar(int value) {
    setState(() {
      currentIndex = value;
    });
    appPageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            controller: appPageController,
            children: pages,
          )),
          Positioned(
            bottom: 45,
            left: 50,
            right: 50,
            child: NavigationBar_Custom(context: context),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar_Custom({required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      width: MediaQuery.sizeOf(context).width / 1.5,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listimage.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _onTappedBar(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    "lib/assets/${listimage[index]}",
                    color: currentIndex == index ? Colors.black : Colors.grey,
                    width: 45,
                    height: 45,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
