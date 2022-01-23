import 'package:flutter/material.dart';
import 'package:remi/src/bloc/provider.dart';
import 'package:remi/src/pages/splash_page.dart';
import 'package:remi/src/routes/routes.dart';
import 'src/preferencias_usuario/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    return Provider(
        child: MaterialApp(
      title: 'Remi',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: getApplicationRoutes(),
    ));
  }
}
