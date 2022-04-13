// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile_portfolio/utils/utils.dart';

class MobilePortfolioDevice extends StatelessWidget {
  const MobilePortfolioDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.launchURL(
          'https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG'),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Image.asset(
          'images/works/mobile_portfolio.png',
          width: 400,
        ),
      ),
    );
  }
}
