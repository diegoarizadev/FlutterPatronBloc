import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _createBackground(context),
        ],
      ),
    );
  }

  _createBackground(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //recuperar el tamaño actual de la pantalla.

    final fondoMorado = Container(
      height: size.height * 0.4, //40% de la pantalla
      width: double.infinity, //Todo el ancho de la pantalla.
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(63, 63, 156, 1.0),
            Color.fromRGBO(90, 70, 178, 1.0),
          ],
        ),
      ),
    );

    final circule = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );

    return Stack(
      children: [
        fondoMorado,
        Positioned(
          child: circule,
          top: 90.0,
          left: 30.0,
        ), //Posiciona un objeto o widget dentro del stack, se deben color solo 3 valores para la ubicación del widget
        Positioned(
          child: circule,
          top: -40.0,
          right: -30.0,
        ),
        Positioned(
          child: circule,
          bottom: -50.0,
          right: -10.0,
        ),
        Positioned(
          child: circule,
          top: 150.0,
          right: 150.0,
        ),
        Container(
          padding: EdgeInsets.only(
            //Separación superior
            top: 80.0,
          ),
          child: Column(
            children: [
              Icon(
                Icons.person_pin_circle,
                color: Colors.white,
                size: 100.0,
              ),
              SizedBox(
                //Centra los widgets
                height: 10.0,
                width: double.infinity,
              ), //Separador
              Text(
                'Alejandro Ariza',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              )
            ],
          ),
        ),
      ],
    );
  }
}
