import 'package:flutter/material.dart';
import 'package:patronbloc/src/bloc/provider.dart';
import 'package:patronbloc/src/pages/home_page.dart';
import 'package:patronbloc/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderInheritedWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
