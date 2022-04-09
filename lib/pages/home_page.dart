// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile_portfolio/components/footer/footer.dart';
import 'package:mobile_portfolio/components/header/header.dart';
import 'package:mobile_portfolio/pages/sections/about_section.dart';
import 'package:mobile_portfolio/pages/sections/apps_section.dart';
import 'package:mobile_portfolio/pages/sections/welcome_section.dart';
import 'package:mobile_portfolio/pages/sections/works_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    // １番上までスクロール
    void scrollToTop() {
      _scrollController.animateTo(
        0,
        duration: const Duration(
          milliseconds: 1,
        ),
        curve: Curves.linear,
      );
    }

    return Scaffold(
      appBar: Header(scrollToTop),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: const [
            SizedBox(
              height: 50,
            ),
            WelcomeSection(),
            SizedBox(
              height: 50,
            ),
            AboutSection(),
            SizedBox(
              height: 50,
            ),
            WorksSection(),
            SizedBox(
              height: 50,
            ),
            AppsSection(),
            SizedBox(
              height: 50,
            ),
            Footer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => scrollToTop(),
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
