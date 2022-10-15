import 'package:flutter/material.dart';
import 'package:webcomic/pages/comic_detail_page.dart';
import 'package:webcomic/pages/comic_pages.dart';
import 'package:webcomic/pages/home/main_page.dart';
import 'package:webcomic/pages/sign_in_page.dart';
import 'package:webcomic/pages/sign_up_page.dart';
import 'package:webcomic/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/comic': (context) => ComicPage(),
        '/comic-detail': (context) => ComicDetailPage(),
      },
    );
  }
}
