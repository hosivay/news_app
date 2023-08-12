import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:news_app/feature/feature_Home/data/NewsData.dart';
import 'package:news_app/feature/feature_Home/presentation/widgets/HomePage_widgets.dart';
import 'package:news_app/feature/feature_bookmark/presentation/widgets/Bookmark_widgets.dart';

class BookMarkPage extends StatelessWidget {
  const BookMarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Appbar(showTitle: false),
              bookmark_title(title: "Collections", fontWeight: FontWeight.bold),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.3,
                    height: 200,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CollectionsWidget(index, context);
                      },
                    )),
              ),
              bookmark_title(
                  title: "Latest bookmarks",
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Slidable(
                    closeOnScroll: true,
                    key: ValueKey(index),
                    endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      dragDismissible: true,
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Colors.grey.shade100,
                          foregroundColor: Colors.black,
                          icon: CupertinoIcons.xmark_circle,  
                          
                          autoClose: true,
                          spacing: 50,
                        ),
                      ],
                    ),
                    child: Padding(
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
