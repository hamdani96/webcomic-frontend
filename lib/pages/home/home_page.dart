import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webcomic/models/user_model.dart';
import 'package:webcomic/providers/auth_provider.dart';
import 'package:webcomic/providers/comic_provider.dart';
import 'package:webcomic/theme.dart';
import 'package:webcomic/widgets/comic_card.dart';
import 'package:webcomic/widgets/comic_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ComicProvider comicProvider = Provider.of<ComicProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset(
                  'assets/profile_image.png',
                  width: 64,
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hallo',
                          style: primaryTextStyle.copyWith(
                            color: Colors.black,
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          ', ${user.name}',
                          style: primaryTextStyle.copyWith(
                            color: primaryColor,
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      user.email,
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0.5,
      );
    }

    Widget bannerComic() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 30,
          left: 30,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://static3.cbrimages.com/wordpress/wp-content/uploads/2021/07/Webtoon-Poster.jpg',
                width: double.infinity,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularComic() {
      return Container(
        margin: EdgeInsets.only(
          top: 18,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular',
              style: primaryTextStyle.copyWith(
                fontSize: 22,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: comicProvider.comics
                    .map(
                      (comic) => ComicCard(comic),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget newsComic() {
      return Container(
        margin: EdgeInsets.only(
          top: 18,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terbaru',
              style: primaryTextStyle.copyWith(
                fontSize: 22,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              // direction: Axis.horizontal,
              // spacing: 15,
              children: comicProvider.comics
                  .map(
                    (comic) => ComicTile(comic),
                  )
                  .toList(),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        bannerComic(),
        popularComic(),
        newsComic(),
      ],
    );
  }
}
