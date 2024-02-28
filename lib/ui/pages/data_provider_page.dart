import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beli Data'),
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
                'From Wallet',
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
                      RichText(
                        text: TextSpan(
                          text: 'Balance : ',
                          style: greyTextStyle.copyWith(
                            fontWeight: regular,
                            fontSize: 13,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Rp 100.000',
                              style: greyTextStyle.copyWith(
                                fontWeight: regular,
                                fontSize: 13,
                              ),
                            )
                          ],
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
                'Select Provider',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const ProviderItem(
                label: 'Telkomsel',
                imgUrl: 'assets/img_provider_telkomsel.png',
                isSelected: true,
              ),
              const ProviderItem(
                label: 'Indosat Ooredoo',
                imgUrl: 'assets/img_provider_indosat.png',
                isSelected: false,
              ),
              const ProviderItem(
                label: 'Singtel',
                imgUrl: 'assets/img_provider_singtel.png',
                isSelected: false,
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
                onPressed: () async {
                  //     if (await Navigator.pushNamed(context, '/pin') == true) {
                  Navigator.pushNamed(context, '/data-package');
                  // }
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
