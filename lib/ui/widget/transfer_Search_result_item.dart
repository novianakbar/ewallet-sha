import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferSearchResultItem extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;
  final bool isVerified;
  final bool isSelected;
  const TransferSearchResultItem({
    super.key,
    required this.name,
    required this.username,
    required this.imgUrl,
    this.isVerified = false,
    this.isSelected = false,
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
          width: 155,
          height: 171,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: isSelected ? blueColor : Colors.transparent,
              )),
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(imgUrl),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 18,
                    height: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isVerified ? whiteColor : Colors.transparent,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: isVerified ? greenColor : Colors.transparent,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
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
        )
      ],
    );
  }
}
