import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/bank_item.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/img_wallet.png',
                    width: 80,
                    height: 55,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '8008 2208 1996',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Angga Risky',
                        style: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Select Bank',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const BankItem(
                label: 'Bank BCA',
                imgUrl: 'assets/img_bank_bca.png',
                isSelected: true,
              ),
              const BankItem(
                label: 'Bank BNI',
                imgUrl: 'assets/img_bank_bni.png',
              ),
              const BankItem(
                label: 'Bank Mandiri',
                imgUrl: 'assets/img_bank_mandiri.png',
              ),
              const BankItem(
                label: 'Bank OCBC',
                imgUrl: 'assets/img_bank_ocbc.png',
              ),
              const SizedBox(
                height: 12,
              ),
              CustomFilledButton(
                title: 'Continue',
                textStyle: whiteTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 16,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/topup-amount');
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
