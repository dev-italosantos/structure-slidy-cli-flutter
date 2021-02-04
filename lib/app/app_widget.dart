import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agna - TransAgua',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: Modular.navigatorKey,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
