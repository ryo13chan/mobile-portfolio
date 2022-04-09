// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:mobile_portfolio/components/works/flutter_widget_of_the_week/flutter_widget_of_the_week_device.dart';
import 'package:mobile_portfolio/components/works/flutter_widget_of_the_week/flutter_widget_of_the_week_info.dart';
import 'package:mobile_portfolio/components/works/mobile_portfolio/mobile_portfolio_device.dart';
import 'package:mobile_portfolio/components/works/mobile_portfolio/mobile_portfolio_info.dart';
import 'package:mobile_portfolio/components/works/web_portfolio/web_portfolio_device.dart';
import 'package:mobile_portfolio/components/works/web_portfolio/web_portfolio_info.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Works',
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
          desktop: (
            BuildContext context,
          ) =>
              Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width > 1300
                  ? MediaQuery.of(context).size.width / 5
                  : MediaQuery.of(context).size.width / 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MobilePortfolioInfo(),
                    MobilePortfolioDevice(),
                  ],
                ),
                const SizedBox(
                  height: 64,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FlutterWidgetOfTheWeekInfo(),
                    FlutterWidgetOfTheWeekDevice(),
                  ],
                ),
                const SizedBox(
                  height: 64,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    WebPortfolioInfo(),
                    WebPortfolioDevice(),
                  ],
                ),
              ],
            ),
          ),
          mobile: (BuildContext context) => Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MobilePortfolioDevice(),
                  MobilePortfolioInfo(),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FlutterWidgetOfTheWeekDevice(),
                  FlutterWidgetOfTheWeekInfo(),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  WebPortfolioDevice(),
                  WebPortfolioInfo(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
