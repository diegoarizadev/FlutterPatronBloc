import 'package:flutter/material.dart';
import 'package:patronbloc/src/bloc/login_bloc.dart';
export 'package:patronbloc/src/bloc/login_bloc.dart';

class ProviderInheritedWidget extends InheritedWidget {
  final loginBloc = LoginBloc();

  ProviderInheritedWidget({Key? key, required Widget child})
      : super(
          //Inicializacion
          key: key, //identificador unico del widget
          child: child, //Puede ser cualquier widget
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
  //Al actualizarse, debe notificar a sus hijos.

  //Instancia de LoginBloc.
  static LoginBloc of(BuildContext context) {
    //El context tiene todo el arbol de widgets.
    return context //La función va abuscar en todo el arbol la instancia del provider que se definio
        .dependOnInheritedWidgetOfExactType<ProviderInheritedWidget>()!
        .loginBloc;
  }
}
