import 'package:flutter/material.dart';
import 'package:movie_app/firebase_utils/firebase_utils.dart';
import 'package:movie_app/shared/style/my_theme.dart';

class WatchListItem extends StatelessWidget {
  int id;

  String image;

  String title;

  String date;

  String content;

  WatchListItem({
    required this.id,
    required this.image,
    required this.title,
    required this.date,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: [
                    Image.network(
                      'https://image.tmdb.org/t/p/w600_and_h900_bestv2$image',
                      fit: BoxFit.cover,
                      width: 200,
                    ),
                    InkWell(
                      onTap: () {
                        FirebaseUtils.deleteWatchListFromFirebase(id);
                      },
                      child: Image.asset('assets/images/bookmarkDone.png'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: MyTheme.whiteColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date,
                    style: TextStyle(color: MyTheme.whiteColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    content,
                    style: TextStyle(color: MyTheme.whiteColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
