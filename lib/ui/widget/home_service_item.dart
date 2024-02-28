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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: greyColor,
                offset: Offset(0, 2),
                blurRadius: 2,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: Ink(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.grey.withOpacity(0.5), // Warna splash
                onTap: onTap,
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Center(
                    child: Image.asset(
                      iconUrl,
                      width: 26,
                      height: 26,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
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
