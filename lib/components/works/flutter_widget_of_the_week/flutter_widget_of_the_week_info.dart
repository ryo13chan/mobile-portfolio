// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mobile_portfolio/app_theme.dart';
import 'package:mobile_portfolio/components/web_label.dart';
import 'package:mobile_portfolio/utils/utils.dart';

class FlutterWidgetOfTheWeekInfo extends StatelessWidget {
  const FlutterWidgetOfTheWeekInfo({Key? key}) : super(key: key);

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
            text: 'Flutter Widget of the Week\nまとめ',
            style: TextStyle(
              color: theme.isDark ? Colors.white : Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Utils.launchURL(
                    'https://ryo13chan.github.io/flutter_widget_of_the_week');
              },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'YouTubeの',
                style: TextStyle(
                  color: theme.isDark ? Colors.white : Colors.black,
                ),
              ),
              TextSpan(
                text: 'Flutter Widget of the Week',
                style: const TextStyle(color: Colors.lightBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Utils.launchURL(
                        'https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG');
                  },
              ),
              TextSpan(
                text: 'をまとめたWebアプリです。',
                style: TextStyle(
                  color: theme.isDark ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'サンプルコードと翻訳を確認しながら動画を視聴できます。',
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
      ],
    );
  }
}
