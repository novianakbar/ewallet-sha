import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeListTransactionItem extends StatelessWidget {
  final String label;
  final String date;
  final String value;
  final String icon;

  const HomeListTransactionItem(
      {super.key,
      required this.label,
      required this.date,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 48,
            height: 48,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  date,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
