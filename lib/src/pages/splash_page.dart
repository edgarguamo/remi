import 'package:flutter/material.dart';
import 'package:remi/src/pages/home_page.dart';
import 'package:remi/src/pages/login_page.dart';
import 'package:remi/src/pages/properties_page.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text('Splash Art'),
      )),
    );
  }

  List<Widget> _listItems(BuildContext context) {
    final List<Widget> listItems = [];
    return listItems;
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
