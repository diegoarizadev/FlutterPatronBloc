import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _createBackground(context),
          _loginFrom(context),
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

  _loginFrom(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //recuperar el tamaño actual de la pantalla.

    return SingleChildScrollView(
      //Es un elemento que permite hacer scroll.
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 180.0,
            ),
          ),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0), //Bordes redondeados
              boxShadow: <BoxShadow>[
                //Sombra
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 0.5), //Posición de la sombra
                  spreadRadius: 3.0, //Fuerza de la sombra.
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Ingreso',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  //Separación del texto con el TextField
                  height: 60.0,
                ),
                _crearEmail(),
                SizedBox(
                  //Separación del texto con el TextField
                  height: 30.0,
                ),
                _crearPassword(),
                SizedBox(
                  //Separación del texto con el TextField
                  height: 30.0,
                ),
                _crearBoton(),
              ],
            ),
          ),
          Text('Olvido la contraseña'),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }

  _crearEmail() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 20.0), //Separaciones de los costados
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.alternate_email,
            color: Colors.deepPurple,
          ),
          hintText: 'tucorreo@correo.co', //placeHolder.
          labelText: 'Correo Electrónico',
        ),
      ),
    );
  }

  _crearPassword() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 20.0), //Separaciones de los costados
      child: TextField(
        obscureText: true, //Ocultar el texto escrito
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_outline,
            color: Colors.deepPurple,
          ),
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  _crearBoton() {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80.0,
          vertical: 10.0,
        ),
        child: Text('Ingresar'),
      ),
      style: TextButton.styleFrom(
          primary: Colors.deepPurple,
          backgroundColor: Colors.deepPurple[100],
          onSurface: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          )),
    );
  }
}
