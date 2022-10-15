import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';
import 'package:webcomic/widgets/comic_list.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({super.key});

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
                  'https://4.bp.blogspot.com/-k_qJ2CPTY4c/WrKuZZ5MM9I/AAAAAAAADWo/ymS6SazhgQ4akiDNS8CLMbkkAGEX4afugCLcBGAs/s1600/Bomtoon%2BContest%2B3.jpg',
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
                  width: double.infinity,
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
                            'Ale Story',
                            style: primaryTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
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
              'Zephyr is the last human fighting evil in a world abandoned by the gods. When he is killed in battle by Tartarus, the god of destruction, all hope for humanity seems lost. But Zephyr’s fate is not sealed -- the gods who find his battles entertaining have gifted him a second chance at life, as he is sent ten years into the past, back to when he was a slave instead of the most powerful human alive. Can Zephyr get his revenge against Tartarus and save the woman he loves, or is he doomed to repeat the past?',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
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
            ),
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
