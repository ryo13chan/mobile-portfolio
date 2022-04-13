// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:mobile_portfolio/components/about/favorites.dart';
import 'package:mobile_portfolio/components/about/mobile_app_development.dart';
import 'package:mobile_portfolio/components/about/self_introduction.dart';
import 'package:mobile_portfolio/components/about/web_app_development.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'About Me',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 1300
                ? MediaQuery.of(context).size.width / 5
                : MediaQuery.of(context).size.width / 15,
          ),
          child: Column(
            children: const [
              SelfIntroduction(),
              SizedBox(height: 24),
              Favorites(),
              SizedBox(height: 24),
              MobileAppDevelopment(),
              SizedBox(height: 24),
              WebAppDevelopment(),
            ],
          ),
        ),
      ],
    );
  }
}
