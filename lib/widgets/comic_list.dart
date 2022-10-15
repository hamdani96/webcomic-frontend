import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';

class ComicList extends StatelessWidget {
  const ComicList({super.key});

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
                        'https://i.pinimg.com/736x/26/dd/1c/26dd1c83544e83eb40a1a8fd68182350.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Story Of Ale',
                      style: primaryTextStyle.copyWith(
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
                    Text(
                      'belum dibaca',
                      style: primaryTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'EPS 01',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  color: primaryColor,
                ),
              )
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
