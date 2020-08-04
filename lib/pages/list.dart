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
        body: Container(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(5.0),
            children: <Widget>[
              new ListTile(
                leading: Image(
                  image: NetworkImage(
                    'https://picsum.photos/200/200'
                  ),
                  width: 40,
                ),
                title: Text('列表项标题'),
                subtitle: Text('列表项内容'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                }
              ),
              new ListTile(
                leading: Image(
                  image: NetworkImage(
                      'https://picsum.photos/200/200'
                  ),
                  width: 40,
                ),
                title: Text('列表项标题'),
                subtitle: Text('列表项内容'),
                  isThreeLine: false,
              ),
              new ListTile(
                leading: Image(
                  image: NetworkImage(
                      'https://picsum.photos/200/200'
                  ),
                  width: 40,
                ),
                title: Text('列表项标题'),
                subtitle: Text('列表项内容'),
                isThreeLine: false,
              ),
              Text(
                 '列表0',
                 style: TextStyle(
                   fontSize: 20,
                   color: Color(0xff388E3C)
                 ),
               ),
              Text('列表1'),
              Text('列表2'),
              Text('列表3'),
              Text('列表4'),
            ],
          )
        )
      ),
    );
  }
}

