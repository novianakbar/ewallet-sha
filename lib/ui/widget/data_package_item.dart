import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataPackageItem extends StatelessWidget {
  final String kuota;
  final String harga;
  final bool isSelected;
  const DataPackageItem(
      {super.key,
      required this.kuota,
      required this.harga,
      this.isSelected = false});

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                kuota,
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Rp $harga',
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
