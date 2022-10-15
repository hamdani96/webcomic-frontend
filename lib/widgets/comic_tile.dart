import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';

class ComicTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/comic');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://vignette.wikia.nocookie.net/webtoon/images/4/49/Tahilalats.jpg/revision/latest?cb=20200930095152&path-prefix=id',
                width: 75,
                height: 75,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              'Tahilalats',
              style: primaryTextStyle.copyWith(
                color: Colors.black,
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
            Text(
              'Comedy',
              style: primaryTextStyle.copyWith(
                fontWeight: light,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
