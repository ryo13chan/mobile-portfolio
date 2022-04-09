// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mobile_portfolio/app_theme.dart';
import 'package:mobile_portfolio/pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Portfolio',
      theme: Provider.of<AppTheme>(context).buildTheme(),
      home: const HomePage(),
    );
  }
}
