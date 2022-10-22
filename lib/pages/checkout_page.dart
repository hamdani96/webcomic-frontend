import 'package:flutter/material.dart';
import 'package:webcomic/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Checkout Details'),
        backgroundColor: primaryColor,
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
            Text(
              'Comic',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 10,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffEDEDED),
              ),
              child: Row(
                children: [
                  Container(
                    width: 59,
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.kena-blok.xyz/uploads/2022/10/Komik-He-Cant-Be-This-Dumb.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'He Can’t Be This Dumb',
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Rp. 20.000',
                        style: primaryTextStyle.copyWith(
                          color: primaryColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffEDEDED),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detail Payment',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Comic Price',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Rp. 20.000',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Admin',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Rp. 2.000',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget btnCheckout() {
      return Container(
        margin: EdgeInsets.only(right: 30, left: 30, bottom: 30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffEDEDED),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rp. 22.000',
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 50,
              // padding: EdgeInsets.only(top: 13, bottom: 13),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Pilih Metode Pembayaran',
                  style: primaryTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          content(),
          Spacer(),
          btnCheckout(),
        ],
      ),
    );
  }
}
