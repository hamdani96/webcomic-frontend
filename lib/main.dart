import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webcomic/pages/checkout_page.dart';
import 'package:webcomic/pages/comic_detail_page.dart';
import 'package:webcomic/pages/comic_pages.dart';
import 'package:webcomic/pages/home/main_page.dart';
import 'package:webcomic/pages/sign_in_page.dart';
import 'package:webcomic/pages/sign_up_page.dart';
import 'package:webcomic/pages/splash_page.dart';
import 'package:webcomic/providers/auth_provider.dart';
import 'package:webcomic/providers/comic_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ComicProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          // '/comic': (context) => ComicPage(),
          '/comic-detail': (context) => ComicDetailPage(),
          '/checkout': (context) => CheckoutPage(),
        },
      ),
    );
  }
}
