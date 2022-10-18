import 'package:flutter/material.dart';
import 'package:webcomic/models/comic_model.dart';
import 'package:webcomic/pages/comic_pages.dart';
import 'package:webcomic/theme.dart';

class ComicCard extends StatelessWidget {
  final ComicModel comic;
  ComicCard(this.comic);

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
        width: 111,
        height: 143,
        margin: EdgeInsets.only(
          right: 13,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffECEDEF),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                comic.banner!,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                child: Container(
                  color: Colors.black54,
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comic.title!,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 14,
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '112',
                            style: primaryTextStyle.copyWith(
                              color: primaryColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Romance',
                        style: primaryTextStyle.copyWith(
                          fontWeight: light,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
