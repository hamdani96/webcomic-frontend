import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';
import 'package:webcomic/widgets/my_comic.dart';

class MyComicPage extends StatelessWidget {
  const MyComicPage({super.key});

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
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Comic',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyComic(),
            MyComic(),
            MyComic(),
            MyComic(),
            MyComic(),
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
