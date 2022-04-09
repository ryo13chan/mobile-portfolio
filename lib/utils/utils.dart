// Dart imports:
import 'dart:js' as js;

class Utils {
  // 外部サイトを開く
  static void launchURL(url) {
    js.context.callMethod('open', [url]);
  }
}
