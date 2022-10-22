import 'package:flutter/material.dart';
import 'package:webcomic/models/detail_comic_model.dart';
import 'package:webcomic/theme.dart';

class ComicList extends StatelessWidget {
  final DetailComicModel detailComic;
  ComicList(this.detailComic);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/comic-detail');
                },
                child: Container(
                  width: 59,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(
                        detailComic.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detailComic.title,
                      style: primaryTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      detailComic.status,
                      style: primaryTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'EPS ${detailComic.episode}',
                      style: primaryTextStyle.copyWith(
                        fontWeight: bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 0.5,
            color: Color(0xffB8B8B8),
          ),
        ],
      ),
    );
  }
}
