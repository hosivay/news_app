// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_Home/data/NewsData.dart';
import 'package:news_app/feature/feature_Home/presentation/widgets/HomePage_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Appbar(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 2,
                    height: 350,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return BannerWidget(index, context);
                          },
                        ),
                      ],
                    )),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(35, 25, 35, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest News",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.arrow_right_circle,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                    child: Row(
                      children: [
                        Image.asset( newsData[index]["image"] as String,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Column(
                            children: [
                              const SizedBox(
                                width: 170,
                                child: Text(
                                  "TECHNOLOGY",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 170,
                                child: Text(
                                  newsData[index]["title"] as String,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
