import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';
import 'package:webcomic/widgets/comic_read.dart';

class ComicDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Read'),
        backgroundColor: primaryColor,
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          bottom: 30,
        ),
        child: Column(
          children: [
            Text(
              'Ale Story',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'EPISODE 01',
              style: primaryTextStyle.copyWith(
                color: primaryColor,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ComicRead(),
            SizedBox(
              height: 20,
            ),
            Text(
              'END EPISODE 01',
              style: primaryTextStyle.copyWith(
                color: primaryColor,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primaryColor,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back To List',
                  style: primaryTextStyle.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
