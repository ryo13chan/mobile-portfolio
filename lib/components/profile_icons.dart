// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'package:mobile_portfolio/utils/utils.dart';

class ProfileIcons extends StatelessWidget {
  const ProfileIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Utils.launchURL('https://twitter.com/ryo_chan_13'),
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        IconButton(
          onPressed: () => Utils.launchURL('https://github.com/ryo13chan'),
          icon: const FaIcon(
            FontAwesomeIcons.github,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        IconButton(
          onPressed: () => Utils.launchURL('https://qiita.com/ryo13chan'),
          icon: Image.asset('images/qiita.png'),
        ),
      ],
    );
  }
}
