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
              title_iconArrowRight(
                title:  "Latest News"
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
                        Image.asset(
                          newsData[index]["image"] as String,
                        ),
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
              ),
              const SizedBox(
                height: 170,
              )
            ],
          ),
        ),
      ),
    );
  }

  
}

