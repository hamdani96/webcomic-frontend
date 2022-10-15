import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';
import 'package:webcomic/widgets/comic_best.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_splash.png',
              width: 32,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Web',
              style: primaryTextStyle.copyWith(
                color: Colors.black,
                fontWeight: bold,
              ),
            ),
            Text(
              'comic',
              style: primaryTextStyle.copyWith(
                color: primaryColor,
                fontWeight: bold,
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0.5,
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: 30,
          left: 30,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://static3.cbrimages.com/wordpress/wp-content/uploads/2021/07/Webtoon-Poster.jpg',
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Best Comic',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ComicBest(),
                  ComicBest(),
                  ComicBest(),
                  ComicBest(),
                  ComicBest(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://i.pinimg.com/736x/b7/72/5d/b7725d592357893859cd3164a2054611.jpg',
                width: double.infinity,
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        content(),
      ],
    );
  }
}
