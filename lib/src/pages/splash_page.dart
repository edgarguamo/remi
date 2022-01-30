import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:remi/src/pages/login_page.dart';

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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: const AssetImage('assets/background_login.jpg'),
              fit: BoxFit.cover),
        ),
        child: Image.asset('assets/logo.png'),
      )),
    );
  }

  List<Widget> _listItems(BuildContext context) {
    final List<Widget> listItems = [];
    return listItems;
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 750),
            child: LoginPage()));
  }
}
