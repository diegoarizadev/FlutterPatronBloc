//1 . creación de los Stream

import 'dart:async';

class LoginBloc {
  //Creacion de los controladores privados, para que varias Instancias esten escuchando.
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Recuperar data el Stream

  Stream<String> get emailStream => _emailController.stream; //Escucha
  Stream<String> get passwordStream => _passwordController.stream; //Escucha

  //Get para insertar data al Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _emailController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }

// static LoginBloc of ( BuildContext context ){
//    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
// }

}
