
  import 'package:flutter/material.dart';

Widget notificationWidget(
      {required BuildContext context,
      required String title,
      required String text}) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Text(
                title,
                style:
                    const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }