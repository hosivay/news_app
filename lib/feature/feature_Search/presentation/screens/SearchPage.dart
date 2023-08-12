import 'package:flutter/material.dart';
import 'package:news_app/feature/feature_Home/presentation/widgets/HomePage_widgets.dart';
import 'package:news_app/feature/feature_Search/presentation/widgets/SearchPage_widgets.dart';

import '../../data/SeachData.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Appbar(searchVersion: true, appbarSearch: true),
            title_iconArrowRight(
                title: "13 Videos",
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w300),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 2,
              height: 170,
              child: ListView.builder(
                itemCount: searchData.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return VideoList(index);
                },
              ),
            ),
            title_iconArrowRight(
                title: "78 News",
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w300),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: newsListData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(35, 18, 35, 8),
                  child: Text(
                    newsListData[index],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 170,
            )
          ],
        ),
      )),
    );
  }
}
