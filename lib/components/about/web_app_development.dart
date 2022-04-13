// Flutter imports:
import 'package:flutter/material.dart';

class WebAppDevelopment extends StatelessWidget {
  const WebAppDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 4, right: 4),
              child: Icon(Icons.computer),
            ),
            Text(
              'Web開発',
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
                'JavaScript',
                'TypeScript',
                'Vue.js',
                'Nuxt.js',
                'HTML',
                'CSS',
                'PHP',
                'Ruby',
              ].join(' / ')),
            ),
          ],
        ),
      ],
    );
  }
}
