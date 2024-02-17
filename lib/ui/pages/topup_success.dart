import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class TopupSuccessPage extends StatelessWidget {
  const TopupSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Top Up\nWallet Berhasil',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Use the money wisely and\ngrow your finance',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: "Back to Home",
              width: 183,
              textStyle: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
