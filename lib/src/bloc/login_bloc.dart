import 'dart:async';
import 'package:remi/src/bloc/validtors.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  //Listenmers
  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarCaracteresPassword);

  Stream<bool> get formValidStream =>
      Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);

  // gets and sets
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePasswprd => _passwordController.sink.add;

  // get last value
  String get email => _emailController.value;
  String get password => _passwordController.value;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
