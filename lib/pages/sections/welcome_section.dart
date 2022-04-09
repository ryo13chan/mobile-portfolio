// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:mobile_portfolio/components/profile_icons.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Ryo\'s\nPortfolio!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'はじめまして。\nエンジニアのりょうと申します。\nモバイルエンジニアとしてのポートフォリオです。\n是非ご覧ください！',
                  style: TextStyle(
                    height: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileIcons(),
          ],
        ),
        ScreenTypeLayout.builder(
          tablet: (BuildContext context) => CircleAvatar(
            minRadius: getValueForScreenType<double>(
              context: context,
              mobile: 50,
              tablet: 100,
              desktop: 150,
            ),
            backgroundImage: const AssetImage('images/icon.jpg'),
          ),
          mobile: (BuildContext context) => Container(),
        ),
      ],
    );
  }
}
