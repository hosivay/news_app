import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget settingsItem(
    {required String icon, required String title, required String subtitle}) {
  return Padding(
    padding: const EdgeInsets.only(top: 7,bottom: 7),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 65,
                height: 65,
                color: Colors.grey.shade200,
                child: Image.asset("lib/assets/$icon"),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.fromLTRB(8, 8, 30, 8),
          child: Icon(
            CupertinoIcons.arrow_right_circle,
            size: 20,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
