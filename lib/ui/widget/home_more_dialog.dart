import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/home_service_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMoreDialog extends StatelessWidget {
  const HomeMoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      alignment: Alignment.bottomCenter,
      backgroundColor: lightBackgroundColor,
      content: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Do More With Us',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Wrap(
              spacing: 35,
              runSpacing: 29,
              alignment: WrapAlignment.center,
              children: [
                HomeServiceItemWidget(
                  title: 'Data',
                  iconUrl: 'assets/ic_product_data.png',
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    Navigator.pushNamed(context, '/data-provider');
                  },
                ),
                HomeServiceItemWidget(
                  title: 'Water',
                  iconUrl: 'assets/ic_product_water.png',
                  onTap: () {},
                ),
                HomeServiceItemWidget(
                  title: 'Stream',
                  iconUrl: 'assets/ic_product_stream.png',
                  onTap: () {},
                ),
                HomeServiceItemWidget(
                  title: 'Movie',
                  iconUrl: 'assets/ic_product_movie.png',
                  onTap: () {},
                ),
                HomeServiceItemWidget(
                  title: 'Food',
                  iconUrl: 'assets/ic_product_food.png',
                  onTap: () {},
                ),
                HomeServiceItemWidget(
                  title: 'Travel',
                  iconUrl: 'assets/ic_product_travel.png',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
