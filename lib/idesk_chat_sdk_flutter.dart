library idesk_chat_sdk_flutter;

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IdeskChatSdkFlutter {
  static final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Colors.transparent)
    ..enableZoom(false)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    )
    ..loadFlutterAsset('packages/idesk_chat_sdk_flutter/assets/index.html');

  static Widget showChat() {
    return WebViewWidget(
      controller: _controller,
    );
  }
}
