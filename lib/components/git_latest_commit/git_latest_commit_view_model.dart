// Dart imports:
import 'dart:convert' as convert;

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

// Project imports:
import 'package:mobile_portfolio/models/git.dart';

class GitLatestCommitViewModel extends ChangeNotifier {
  Git git = Git(
    '',
    '',
    '',
  );

  void fetchData() async {
    final response = await http.get(Uri.parse(
        'https://api.github.com/repos/ryo13chan/mobile-portfolio/commits/master'));

    if (response.statusCode == 200) {
      Map<String, dynamic> gitJson = convert.jsonDecode(response.body);
      git = Git(
        DateFormat('yyyy-MM-dd').format(
          DateTime.parse(
            gitJson['commit']['committer']['date'],
          ),
        ),
        gitJson['commit']['message'],
        gitJson['html_url'],
      );
      notifyListeners();
    }
  }
}
