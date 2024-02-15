import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            margin: const EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
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
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_edit_profile.png',
                  label: 'Edit Profile',
                  onTap: () {
                    Navigator.pushNamed(context, '/pin');
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_pin.png',
                  label: 'My PIN',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_wallet.png',
                  label: 'Wallet Settings',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_my_reward.png',
                  label: 'My Rewards',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_help.png',
                  label: 'Help Center',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  label: 'Log Out',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Report a Problem',
            textStyle: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
