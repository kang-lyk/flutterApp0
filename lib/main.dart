import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/list.dart' ;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/list': (context) =>ListPage()
      },
    );
  }
}

