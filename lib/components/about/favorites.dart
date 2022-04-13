// Flutter imports:
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 4, right: 4),
              child: Icon(Icons.favorite),
            ),
            Text(
              '好きなもの',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Text([
                'お笑い',
                '漫画',
                'ゲーム',
                'ラジオ',
                'サッカー',
                '散歩',
                'サウナ',
                '将棋',
              ].join(' / ')),
            )
          ],
        ),
      ],
    );
  }
}
