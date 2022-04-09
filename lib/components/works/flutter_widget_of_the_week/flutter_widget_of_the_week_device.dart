// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile_portfolio/utils/utils.dart';

class FlutterWidgetOfTheWeekDevice extends StatelessWidget {
  const FlutterWidgetOfTheWeekDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.launchURL(
          'https://ryo13chan.github.io/flutter_widget_of_the_week'),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Image.asset(
          'images/works/flutter_widget_of_the_week.png',
          width: 400,
        ),
      ),
    );
  }
}
