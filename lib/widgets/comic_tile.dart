import 'package:flutter/material.dart';
import 'package:webcomic/models/comic_model.dart';
import 'package:webcomic/pages/comic_pages.dart';
import 'package:webcomic/theme.dart';

class ComicTile extends StatelessWidget {
  final ComicModel comic;
  ComicTile(this.comic);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ComicPage(comic),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 15,
        ),
        child: Row(
          children: [
            Container(
              width: 59,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(
                    comic.banner!,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comic.title!,
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  'Romance',
                  style: primaryTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
