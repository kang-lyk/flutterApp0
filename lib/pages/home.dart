import 'package:flutter/material.dart';

// void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
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
                  print('试试tooltip是什么');
                  Navigator.pushNamed(context, '/list');
                },
              ),
            IconButton(
              icon: Icon(Icons.home),
              tooltip: "Home",
              onPressed: () {
                print("Home");
                
              },
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                  child: Text("热度"),
                  value: "hot",
                ),
                PopupMenuItem<String>(
                  child: Text("最新"),
                  value: "new",
                ),
              ],
              onSelected: (String action) {
                switch (action) {
                  case "hot":
                    print("hot");
                    break;
                  case "new":
                    print("new");
                    break;
                }
              },
              onCanceled: () {
                print("onCanceled");
              },
            )
          ],
        ),
        body: Center(child: RaisedButton(
          child: Text('点击跳到第二页'),
          onPressed: (){
            Navigator.pushNamed(context, '/list');
          },
        )),
      ),
    );
  }
}
