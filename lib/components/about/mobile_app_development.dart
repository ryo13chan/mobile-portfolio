// Flutter imports:
import 'package:flutter/material.dart';

class MobileAppDevelopment extends StatelessWidget {
  const MobileAppDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 4, right: 4),
              child: Icon(Icons.smartphone),
            ),
            Text(
              'モバイル開発',
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
                'Dart',
                'Flutter',
                'Firebase',
              ].join(' / ')),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: const [
            Expanded(
              child:
                  Text('実務経験はありませんが、個人開発でiOSアプリやFlutter WebでWebアプリを作成しています。'),
            ),
          ],
        ),
      ],
    );
  }
}
