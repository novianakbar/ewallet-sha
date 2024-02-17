import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit PIN'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
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
                // PASSWORD INPUT
                const CustomTextField(
                  label: "PIN Lama",
                  isPassword: true,
                  marginBottom: 30,
                ),
                // PASSWORD INPUT
                const CustomTextField(
                  label: "PIN Baru",
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
