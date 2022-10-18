import 'package:flutter/material.dart';
import 'package:webcomic/models/comic_model.dart';
import 'package:webcomic/theme.dart';
import 'package:webcomic/widgets/comic_list.dart';

class ComicPage extends StatelessWidget {
  final ComicModel comic;
  ComicPage(this.comic);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            height: 191,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  comic.banner!,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  // width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comic.title!,
                            style: primaryTextStyle.copyWith(
                              fontSize: 20,
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
                      Icon(
                        Icons.bookmark_add_outlined,
                        color: primaryColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 30,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Synopsis',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              comic.description!,
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            comic.status! == 'premium'
                ? Container(
                    width: 156,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primaryColor,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/cart_icon.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Buy Comic',
                            style: primaryTextStyle.copyWith(
                              fontWeight: bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Start Reading',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ComicList(),
            ComicList(),
            ComicList(),
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
