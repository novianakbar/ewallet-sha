import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserITem extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;
  final bool isVerified;
  const TransferRecentUserITem({
    super.key,
    required this.name,
    required this.username,
    required this.imgUrl,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 18,
          ),
          padding: const EdgeInsets.all(22),
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(
                imgUrl,
                width: 45,
                height: 45,
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "@$username",
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              ),
              if (isVerified)
                Row(
                  children: [
                    Image.asset(
                      'assets/ic_check.png',
                      width: 14,
                      height: 14,
                    ),
                    Text(
                      'Verified',
                      style: greenTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        )
      ],
    );
  }
}
