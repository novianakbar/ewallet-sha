import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
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
                  label: "Username",
                  marginBottom: 16,
                ),
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
                  title: "Update Now",
                  width: double.infinity,
                  height: 50,
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile-edit-success');
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
