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
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  // width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 25,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: const BoxDecoration(
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
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Text(
                            comic.category.category!,
                            style: primaryTextStyle.copyWith(
                              fontWeight: light,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
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
        margin: const EdgeInsets.only(
          top: 20,
          right: 30,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/58839721?v=4',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Komikus',
                      style: primaryTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      comic.user.name!,
                      style: primaryTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.bookmark_add,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Synopsis',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              comic.description!,
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkout');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/cart_icon.png',
                            width: 18,
                          ),
                          const SizedBox(
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
            Column(
              children: comic.detail_comics
                  .map(
                    (detailComic) => ComicList(detailComic),
                  )
                  .toList(),
            ),
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
