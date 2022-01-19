import 'dart:async';

class validators {
  final validarCaracteresPassword =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('Mínimo 6 caracteres');
    }
  });
}
