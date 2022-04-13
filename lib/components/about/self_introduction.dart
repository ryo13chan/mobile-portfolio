// Flutter imports:
import 'package:flutter/material.dart';

class SelfIntroduction extends StatelessWidget {
  const SelfIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 4, right: 4),
              child: Icon(Icons.person),
            ),
            Text(
              '自己紹介',
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
                'りょう',
                '男',
                '20代',
                '北海道出身',
                '札幌在住',
                'エンジニア',
                'モバイル開発',
                'Web開発',
                'フリーランス',
              ].join(' / ')),
            )
          ],
        ),
      ],
    );
  }
}
