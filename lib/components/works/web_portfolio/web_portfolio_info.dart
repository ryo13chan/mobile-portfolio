// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mobile_portfolio/app_theme.dart';
import 'package:mobile_portfolio/components/web_label.dart';
import 'package:mobile_portfolio/utils/utils.dart';

class WebPortfolioInfo extends StatelessWidget {
  const WebPortfolioInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppTheme>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WebLabel(),
        const SizedBox(
          height: 4,
        ),
        RichText(
          text: TextSpan(
            text: 'Web Portfolio',
            style: TextStyle(
              color: theme.isDark ? Colors.white : Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Utils.launchURL('https://ryo13chan.github.io/my-portfolio/');
              },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Webエンジニアとしてのポートフォリオサイトです。',
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          '【使用技術】',
        ),
        const Text(
          '・Nuxt.js',
        ),
        const Text(
          '・TypeScript',
        ),
        const Text(
          '・HTML/CSS',
        ),
      ],
    );
  }
}
