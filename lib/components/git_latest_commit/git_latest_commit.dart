// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:mobile_portfolio/components/git_latest_commit/git_latest_commit_view_model.dart';
import 'package:mobile_portfolio/utils/utils.dart';

class GitLatestCommit extends StatelessWidget {
  const GitLatestCommit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GitLatestCommitViewModel>(
      create: (_) => GitLatestCommitViewModel()..fetchData(),
      child:
          Consumer<GitLatestCommitViewModel>(builder: (context, model, child) {
        return model.git.date != ''
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.git.date,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: AnimatedTextKit(
                        onTap: () => Utils.launchURL(model.git.url),
                        animatedTexts: [
                          TypewriterAnimatedText(
                            model.git.message,
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ],
              )
            : Container();
      }),
    );
  }
}
