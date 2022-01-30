import 'package:flutter/material.dart';
import 'package:remi/src/pages/empresa_page.dart';
import 'package:remi/src/pages/generales_page.dart';
import 'package:remi/src/pages/home_page.dart';
import 'package:remi/src/pages/login_page.dart';
import 'package:remi/src/pages/properties_page.dart';
import 'package:remi/src/pages/register_page.dart';
import 'package:remi/src/pages/mercado_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(title: 'home'),
    '/prop': (BuildContext context) => PropertiesPage(title: 'properties'),
    '/login': (BuildContext context) => LoginPage(),
    '/register': (BuildContext context) => RegisterPage(),
    '/form': (BuildContext context) => FormPage(
          title: 'form page',
        ),
    '/enterprise': (BuildContext context) => FormPage2(),
    '/mercado': (BuildContext context) => FormPage3(),
  };
}
