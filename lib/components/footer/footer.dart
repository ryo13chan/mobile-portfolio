// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile_portfolio/components/profile_icons.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            Text('© 2022 Ryo'),
            ProfileIcons(),
          ],
        ),
      ],
    );
  }
}
