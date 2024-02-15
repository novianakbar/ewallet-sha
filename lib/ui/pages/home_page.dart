import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/home_list_transaction_item.dart';
import 'package:bank_sha/ui/widget/home_service_item.dart';
import 'package:bank_sha/ui/widget/home_tips_item.dart';
import 'package:bank_sha/ui/widget/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: const CircleBorder(),
        child: Image.asset('assets/ic_plus_circle.png', width: 24),
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: whiteColor,
          selectedItemColor: blueColor,
          selectedIconTheme: IconThemeData(
            color: blueColor,
          ),
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontWeight: medium, fontSize: 10),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 10,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_overview.png', width: 20),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_history.png', width: 20),
              label: 'History',
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                width: 50,
                margin: const EdgeInsets.only(
                  top: 15,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_statistic.png', width: 20),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_reward.png', width: 20),
              label: 'Reward',
            ),
          ],
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: ListView(
          children: [
            sectionProfile(context),
            sectionWalletCard(),
            sectionLevelCard(),
            sectionServices(),
            sectionLatesTransaction(),
            sectionSend(),
            sectionFriendlyTips(),
          ],
        ),
      ),
    );
  }

  Widget sectionProfile(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'shaynahan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img_profile.png'),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget sectionWalletCard() {
    return Container(
      margin: const EdgeInsets.only(
        top: 32,
      ),
      width: double.infinity,
      height: 220,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shayna Hanna",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6.5,
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            'Rp. 12.500',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionLevelCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Level 1',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ),
              Text(
                '55%',
                style: greenTextStyle.copyWith(
                  fontWeight: semibold,
                ),
              ),
              Text(
                ' of ',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold,
                ),
              ),
              Text(
                'Rp 20.000',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            value: 0.55,
            minHeight: 5,
            valueColor: AlwaysStoppedAnimation(greenColor),
            backgroundColor: lightBackgroundColor,
            borderRadius: BorderRadius.circular(55),
          )
        ],
      ),
    );
  }

  Widget sectionServices() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItemWidget(
                title: 'Top Up',
                iconUrl: 'assets/ic_topup.png',
              ),
              HomeServiceItemWidget(
                title: 'Send',
                iconUrl: 'assets/ic_send.png',
              ),
              HomeServiceItemWidget(
                title: 'Withdraw',
                iconUrl: 'assets/ic_withdraw.png',
              ),
              HomeServiceItemWidget(
                title: 'More',
                iconUrl: 'assets/ic_more.png',
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget sectionLatesTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: const Column(
              children: [
                HomeListTransactionItem(
                  label: 'Top Up',
                  date: 'Yesterday',
                  value: '+ 450.000',
                  icon: 'assets/ic_transaction_cat1.png',
                ),
                HomeListTransactionItem(
                  label: 'Cashback',
                  date: 'Sep 11',
                  value: '+ 22.000',
                  icon: 'assets/ic_transaction_cat2.png',
                ),
                HomeListTransactionItem(
                  label: 'Withdraw',
                  date: 'Sep 2',
                  value: '- 5.000',
                  icon: 'assets/ic_transaction_cat3.png',
                ),
                HomeListTransactionItem(
                  label: 'Transfer',
                  date: 'Aug 27',
                  value: '- 123.500',
                  icon: 'assets/ic_transaction_cat4.png',
                ),
                HomeListTransactionItem(
                  label: 'Electric',
                  date: 'Feb 18',
                  value: '- 12.300.000',
                  icon: 'assets/ic_transaction_cat5.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionSend() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeUserItem(
                    username: "yuanita",
                    imgUrl: 'assets/img_friend1.png',
                  ),
                  HomeUserItem(
                    username: "jani",
                    imgUrl: 'assets/img_friend2.png',
                  ),
                  HomeUserItem(
                    username: "urip",
                    imgUrl: 'assets/img_friend3.png',
                  ),
                  HomeUserItem(
                    username: "masa",
                    imgUrl: 'assets/img_friend4.png',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget sectionFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 14,
              ),
              child: const Wrap(
                spacing: 30,
                runSpacing: 18,
                children: [
                  HomeTipsItem(
                    title: 'Best tips for using a credit card',
                    imgUrl: 'assets/img_tips1.png',
                    url: 'https://google.com/',
                  ),
                  HomeTipsItem(
                      title: 'Spot the good pie of finance model',
                      imgUrl: 'assets/img_tips2.png',
                      url: 'aaaaa'),
                  HomeTipsItem(
                      title: 'Great hack to get better advices',
                      imgUrl: 'assets/img_tips3.png',
                      url: 'https://google.com'),
                  HomeTipsItem(
                      title: 'Save more penny buy this instead',
                      imgUrl: 'assets/img_tips4.png',
                      url: 'https://google.com'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
