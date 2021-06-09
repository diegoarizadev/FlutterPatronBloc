//1 . creación de los Stream

import 'dart:async';

import 'package:patronbloc/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class LoginBloc with Validators {
  //Implementación de Mixing
  //Creacion de los controladores privados, para que varias Instancias esten escuchando.
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Recuperar data el Stream

  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail); //Escucha
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPassword); //Escucha

  Stream<bool> get formValidStream =>
      Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);

  //Get para insertar data al Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
