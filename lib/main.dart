import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:mobx_setup/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      builder: (context, child) {
        child = botToastBuilder(context, child);
        return child;
      },
      home: HomeScreen(),
      navigatorObservers: [BotToastNavigatorObserver()],
    );
  }
}
