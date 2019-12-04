import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('什么情况？'),
            leading: Icon(Icons.arrow_back_ios),
            backgroundColor: Color.fromARGB(1, 0, 0, 0),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_alert),
                tooltip: '试试tooltip是什么',
                onPressed: () {
                  print('onPressed');
                }
              ),
            ],
           
          ),
          body: Center(
            child: Text('我是body里的东西'),
          )),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   W
// }
