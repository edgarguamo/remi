import 'package:flutter/material.dart';
import 'package:remi/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(title: 'home'),
  };
}
