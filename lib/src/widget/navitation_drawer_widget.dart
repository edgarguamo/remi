import 'package:flutter/material.dart';
import 'package:remi/src/pages/generales_page.dart';
import 'package:remi/src/pages/home_page.dart';
import 'package:remi/src/pages/properties_page.dart';
import 'package:remi/src/pages/empresa_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: padding,
        children: <Widget>[
          const SizedBox(height: 48),
          buildMenuItem(
            text: 'Inicio',
            icon: Icons.home,
            onClicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Propiedades',
            icon: Icons.article,
            onClicked: () => selectedItem(context, 1),
          ),
          Divider(color: Colors.grey),
          const SizedBox(height: 24),
          buildMenuItem(
            text: 'Perfil',
            icon: Icons.account_circle,
            onClicked: null,
          ),
        ],
      ),
    );
  }
}

Widget buildMenuItem({
  String text,
  IconData icon,
  VoidCallback onClicked,
}) {
  final color = Colors.black;

  return ListTile(
    leading: Icon(
      icon,
      color: color,
      size: 30,
    ),
    title: Text(
      text,
      style: TextStyle(color: color, fontSize: 20),
    ),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(title: 'home'),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PropertiesPage(title: 'properties'),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FormPage(title: 'form'),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FormPage2(title: 'form2'),
      ));
      break;
    default:
  }
}
