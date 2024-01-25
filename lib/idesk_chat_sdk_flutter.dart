library idesk_chat_sdk_flutter;

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IdeskChatSdkFlutter {
  static final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Colors.transparent)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    )
    ..loadFlutterAsset('assets/my_html.html');

  static showChat() async {
    return WebViewWidget(controller: _controller);
  }
}
