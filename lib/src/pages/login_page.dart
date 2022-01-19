import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:remi/src/bloc/login_bloc.dart';
import 'package:remi/src/bloc/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (Center(
            child: Stack(children: <Widget>[
      _backgroundLogo(context),
      _loginForm(context),
    ]))));
  }

  Widget _backgroundLogo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final background = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/background_login.jpg'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
    );

    return Stack(
      children: [
        background,
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: const <Widget>[
              Image(
                image: AssetImage('assets/logo.png'),
                width: 115,
              ),
              SizedBox(width: double.infinity),
            ],
          ),
        )
      ],
    );
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(child: Container(height: 160.0)),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 90.0),
            padding: EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(254, 254, 254, 0.88),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                _crearEmail(bloc!),
                SizedBox(
                  height: 5.0,
                ),
                _crearPassword(bloc),
                SizedBox(
                  height: 30.0,
                ),
                _crearBoton(bloc),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Registrar'),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(150, 202, 80, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearEmail(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 19.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  icon: Icon(Icons.alternate_email,
                      color: Color.fromRGBO(149, 202, 80, 1.0)),
                  hintText: "ejemplo@correo.com",
                  labelText: 'Correo electrónico',
                  counterText: snapshot.data),
              onChanged: bloc.changeEmail,
            ));
      },
    );
  }

  Widget _crearPassword(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock_outline,
                      color: Color.fromRGBO(150, 202, 80, 1.0)),
                  labelText: 'Contraseña',
                  counterText: snapshot.data),
              onChanged: bloc.changePasswprd,
            ));
      },
    );
  }

  Widget _crearBoton(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
          onPressed: snapshot.hasData ? () => _login(bloc) : null,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 12.0),
            child: Text('Ingresar'),
          ),
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(150, 202, 80, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
        );
      },
    );
  }

  _login(LoginBloc bloc) {
    print('email: ${bloc.email}');
    print('password: ${bloc.password}');
  }
}
