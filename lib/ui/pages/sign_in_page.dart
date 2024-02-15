import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
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
            'Sign In &\nGrow Your Financial',
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
                // EMAIL INPUT
                const CustomTextField(
                  label: "Email Address",
                  marginBottom: 16,
                ),
                // PASSWORD INPUT
                const CustomTextField(
                  label: "Password",
                  isPassword: true,
                  marginBottom: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: "Sign In",
                  width: double.infinity,
                  height: 50,
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextButton(
                  title: 'Create New Account',
                  width: double.infinity,
                  height: 24,
                  textStyle: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
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
