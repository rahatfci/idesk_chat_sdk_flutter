import 'package:flutter/material.dart';
import 'package:idesk_chat_sdk_flutter/idesk_chat_sdk_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE83A38)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('IDesk Flutter Chat SDK'),
          ),
          body: IdeskChatSdkFlutter.showChat(),
        ));
  }
}
