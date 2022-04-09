// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:mobile_portfolio/app_theme.dart';
import 'package:mobile_portfolio/components/theme_switch.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  final void Function() onTapAvatar;
  const Header(this.onTapAvatar, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppTheme>(context);
    return AppBar(
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => onTapAvatar(),
          child: const CircleAvatar(
            backgroundImage: AssetImage('images/icon.jpg'),
          ),
        ),
      ),
      actions: [
        ThemeSwitch(
          theme.isDark,
          theme.changeMode,
        ),
      ],
    );
  }
}
