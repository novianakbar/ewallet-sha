import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.symmetric(
              vertical: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: "Continue",
                  width: double.infinity,
                  height: 50,
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomTextButton(
                  title: 'Skip for Now',
                  width: double.infinity,
                  height: 24,
                  textStyle: greyTextStyle.copyWith(),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
