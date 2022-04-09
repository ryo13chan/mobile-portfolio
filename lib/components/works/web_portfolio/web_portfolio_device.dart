// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile_portfolio/utils/utils.dart';

class WebPortfolioDevice extends StatelessWidget {
  const WebPortfolioDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.launchURL('https://ryo13chan.github.io/my-portfolio/'),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Image.asset(
          'images/works/web_portfolio.png',
          width: 400,
        ),
      ),
    );
  }
}
