import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textfield.dart';
import 'package:bank_sha/ui/widget/transfer_Search_result_item.dart';
import 'package:bank_sha/ui/widget/transfer_recent_user_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final TextEditingController searchController =
      TextEditingController(text: "");

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
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
            'Search',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomTextField(
            hint: 'by username',
            controller: searchController,
          ),
          // sectionRecentUsers(),
          sectionSearchUsers(),
          const SizedBox(
            height: 254,
          ),
          CustomFilledButton(
            title: "Continue",
            textStyle: whiteTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          )
        ],
      ),
    );
  }

  Widget sectionSearchUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            alignment: WrapAlignment.start,
            children: [
              TransferSearchResultItem(
                name: "Yonna Jie",
                username: "yoenna",
                imgUrl: 'assets/img_friend1.png',
                isVerified: true,
              ),
              TransferSearchResultItem(
                name: "Yonne Ka",
                username: "yoonyu",
                imgUrl: 'assets/img_friend2.png',
                isVerified: false,
                isSelected: true,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget sectionRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserITem(
            name: "Yonna Jie",
            username: "yoenna",
            imgUrl: 'assets/img_friend1.png',
            isVerified: true,
          ),
          const TransferRecentUserITem(
            name: "John Hi",
            username: "jhi",
            imgUrl: 'assets/img_friend3.png',
            isVerified: false,
          ),
          const TransferRecentUserITem(
            name: "Masayoshi",
            username: "masayoshi",
            imgUrl: 'assets/img_friend4.png',
            isVerified: false,
          ),
        ],
      ),
    );
  }
}
