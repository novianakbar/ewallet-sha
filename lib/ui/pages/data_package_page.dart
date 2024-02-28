import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/data_package_item.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomTextField(
            hint: '+62',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            alignment: WrapAlignment.center,
            children: [
              DataPackageItem(
                harga: '210.000',
                kuota: "10GB",
                isSelected: true,
              ),
              DataPackageItem(
                harga: '210.000',
                kuota: "25GB",
              ),
              DataPackageItem(
                harga: '210.000',
                kuota: "40GB",
              ),
              DataPackageItem(
                harga: '210.000',
                kuota: "100GB",
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          CustomFilledButton(
            title: "Continue",
            textStyle: whiteTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamed(context, '/data-package-success');
              }
            },
          )
        ],
      ),
    );
  }
}
