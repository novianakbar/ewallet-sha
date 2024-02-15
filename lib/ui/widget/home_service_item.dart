import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServiceItemWidget extends StatelessWidget {
  final String title;
  final String iconUrl;
  final VoidCallback? onTap;

  const HomeServiceItemWidget({
    super.key,
    required this.title,
    required this.iconUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
              height: 26,
              color: blackColor,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
