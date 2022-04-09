// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile_portfolio/components/ios_label.dart';
import 'package:mobile_portfolio/utils/utils.dart';

class DiceRollerInfo extends StatelessWidget {
  const DiceRollerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            IosLabel(),
            Text(
              'ダイスローラー',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'すぐに遊べるシンプルなサイコロアプリです。',
        ),
        const Text(
          '表示内容のカスタマイズや、お気に入りの出目をクリップして共有できます。',
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () => Utils.launchURL(
              'https://apps.apple.com/ja/app/%E3%83%80%E3%82%A4%E3%82%B9%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC/id1610911298'),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'images/app_store_download.png',
              width: 150,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          '【使用技術】',
        ),
        const Text(
          '・Dart',
        ),
        const Text(
          '・Flutter',
        ),
        const Text(
          '・Firebase',
        ),
      ],
    );
  }
}
