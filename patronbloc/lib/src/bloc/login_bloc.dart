//1 . creación de los Stream

import 'dart:async';

import 'package:patronbloc/src/bloc/validators.dart';

class LoginBloc with Validators {
  //Creacion de los controladores privados, para que varias Instancias esten escuchando.
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Recuperar data el Stream

  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail); //Escucha
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPassword); //Escucha

  //Get para insertar data al Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
