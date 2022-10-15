import 'package:flutter/material.dart';

class ComicRead extends StatelessWidget {
  const ComicRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.only(bottom: 9),
      child: Column(
        children: [
          // Image.network(
          //   'https://5ln1h5525y2q.kentut.xyz/data/67256914/1/4198e8793e087aab7cf509be52f02205/4I7wA4Ug1TZOb9BWIj1jTSqns035UxSR1XM6qYRX.jpg',
          // ),
          Image.network(
            'https://5ln1h5525y2q.kentut.xyz/data/67256914/1/4198e8793e087aab7cf509be52f02205/E98CoYE9uFqIzuktiTrWbWKYUBhNVgwlSNVZ54QD.jpg',
          ),
          Image.network(
            'https://5ln1h5525y2q.kentut.xyz/data/67256914/1/4198e8793e087aab7cf509be52f02205/CbG5ZY5SvmCGDhK8e5wvLKoViGBws7882OVRVN2a.jpg',
          ),
          Image.network(
            'https://5ln1h5525y2q.kentut.xyz/data/67256914/1/4198e8793e087aab7cf509be52f02205/HwT1xuaudPSo3qwBdqCWPfY95GeV7LiFLG0iCYpq.jpg',
          ),
          Image.network(
            'https://5ln1h5525y2q.kentut.xyz/data/67256914/1/4198e8793e087aab7cf509be52f02205/ZYBzYJ6RpbpWHVeGDLjYxeXdUqlg334IN82xiI62.jpg',
          ),
          Image.network(
            'https://5ln1h5525y2q.kentut.xyz/data/67256914/1/4198e8793e087aab7cf509be52f02205/jpYD4mhNDwEhhb7dPuvS19P5hUqXRmA9G0bnYurb.jpg',
          ),
        ],
      ),
    );
  }
}
