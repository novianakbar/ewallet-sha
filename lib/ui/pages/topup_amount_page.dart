import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: "");
  addAmount(String number) {
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            text.replaceAll(
              '.',
              '',
            ),
          ),
        ),
      );
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
      });
    }
    if (amountController.text == "") {
      amountController.text = "0";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkBackgroundColor,
      appBar: AppBar(
        backgroundColor: darkBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Total Amount',
          style: whiteTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 57),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: amountController,
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Text(
                      'Rp ',
                      style: whiteTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: medium,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.end,
                children: [
                  CustomInputButton(
                    child: Text(
                      '1',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('1');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '2',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('2');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '3',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('3');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '4',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('4');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '5',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('5');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '6',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('6');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '7',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('7');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '8',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('8');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '9',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('9');
                    },
                  ),
                  CustomInputButton(
                    child: Text(
                      '0',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      addAmount('0');
                    },
                  ),
                  CustomInputButton(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                    onTap: () {
                      deleteAmount();
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'Checkou Now',
            textStyle: whiteTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamed(context, '/topup-success');
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextButton(
            title: 'Terms & Conditions',
            textStyle: greyTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
