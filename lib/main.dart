import 'dart:html';

import 'package:flutter/material.dart';
import 'package:remi/src/pages/splash_page.dart';
import 'package:remi/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remi',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: getApplicationRoutes(),
    );
  }
}
