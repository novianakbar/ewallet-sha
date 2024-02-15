import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // FULL NAME INPUT
                const CustomTextField(
                  label: "Full Name",
                  marginBottom: 16,
                ),
                // EMAIL INPUT
                const CustomTextField(
                  label: "Email Address",
                  marginBottom: 16,
                ),
                // PASSWORD INPUT
                const CustomTextField(
                  label: "Password",
                  isPassword: true,
                  marginBottom: 30,
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
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextButton(
                  title: 'Sign In',
                  width: double.infinity,
                  height: 24,
                  textStyle: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
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
