// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:mobile_portfolio/components/apps/dice_roller_info.dart';

class AppsSection extends StatelessWidget {
  const AppsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Apps',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ScreenTypeLayout.builder(
          desktop: (BuildContext context) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/apps/dice_roller.png',
                width: 200,
              ),
              const DiceRollerInfo(),
            ],
          ),
          mobile: (BuildContext context) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/apps/dice_roller.png',
                width: 150,
              ),
              const DiceRollerInfo(),
            ],
          ),
        ),
      ],
    );
  }
}
