library idesk_chat_sdk_flutter;

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class IdeskChatSdkFlutter {
  static late InAppWebViewController _webViewController;
  static Widget showChat() {
    return InAppWebView(
      initialFile: "packages/idesk_chat_sdk_flutter/assets/index.html",
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          javaScriptEnabled: true,
        ),
        android: AndroidInAppWebViewOptions(
          useHybridComposition: true,
        ),
      ),
      onWebViewCreated: (InAppWebViewController controller) {
        _webViewController = controller;
        _webViewController.addJavaScriptHandler(
            handlerName: 'buttonClicked',
            callback: (args) {
              print(args);
            });
      },
      onConsoleMessage: (controller, consoleMessage) {
        print(consoleMessage);
      },
    );
  }
}
