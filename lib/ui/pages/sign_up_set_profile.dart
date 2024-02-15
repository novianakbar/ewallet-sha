import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUpSetProfilePage extends StatelessWidget {
  const SignUpSetProfilePage({super.key});

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
            'Join Us to Unlock\nYour Growth',
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
                // Container(
                //   width: 120,
                //   height: 120,
                //   margin: const EdgeInsets.only(
                //     bottom: 10,
                //   ),
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightBackgroundColor,
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic_upload.png',
                //       width: 32,
                //       height: 32,
                //     ),
                //   ),
                // ),
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  label: "Set PIN (6 digit number)",
                  marginBottom: 30,
                  isPassword: true,
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
                    Navigator.pushNamed(context, '/sign-up-set-ktp');
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
