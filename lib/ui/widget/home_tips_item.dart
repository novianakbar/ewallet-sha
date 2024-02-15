import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String url;

  const HomeTipsItem({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
        }
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imgUrl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
