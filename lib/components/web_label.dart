// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mobile_portfolio/app_theme.dart';

class WebLabel extends StatelessWidget {
  const WebLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppTheme>(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: theme.isDark ? Colors.white : Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'Web',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
