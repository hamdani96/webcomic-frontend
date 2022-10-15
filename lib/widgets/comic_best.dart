import 'package:flutter/material.dart';

class ComicBest extends StatelessWidget {
  const ComicBest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20,
      ),
      width: 123,
      height: 111,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(
            'https://i.pinimg.com/736x/80/21/b2/8021b2689da8568e5f6086cc7c42feff.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
