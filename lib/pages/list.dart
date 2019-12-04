import 'package:flutter/material.dart';

// void main() => runApp(ListPage());

class ListPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '这是第二页',
      home: Scaffold(
        appBar: AppBar(
          title: Text('这是第二页'),
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Center(child: RaisedButton(
          child: Text('走，咱们回到首页去'),
          onPressed: (){
            Navigator.pushNamed(context, '/');
          },
        )),
      ),
    );
  }
}
