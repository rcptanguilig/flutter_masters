import 'package:flutter/material.dart';
import 'pages/row_and_column_page.dart';
import 'pages/stack_page.dart';
import 'pages/indexed_stack_page.dart';
import 'pages/grid_page.dart';
import 'pages/table_page.dart';
import 'pages/flow_page.dart';
import 'pages/wrap_page.dart';
import 'pages/listview_page.dart';
import 'helper.dart';

import 'pages/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Helper helper;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.lightBlueAccent,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          splashColor: Colors.blueGrey,
          textTheme: ButtonTextTheme.normal,
        ),
      ),
      home: MyHomePage(title: 'Flutter Masters'),
      routes: {
        '/rowcolumn': (BuildContext context) => RowAndColumnPage(),
        '/stack': (BuildContext context) => SecondPage(),
        '/istack': (BuildContext context) => SecondPage(),
        '/grid': (BuildContext context) => GridViewPage(),
        '/table': (BuildContext context) => TablePage(),
        '/flow': (BuildContext context) => SecondPage(),
        '/wrap': (BuildContext context) => WrapPage(),
        '/listview': (BuildContext context) => ListViewPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _helloList = ["Hello!","Përshëndetje!","أهلا!","Բարև՜։","Zdravo!","Hola!","你好！","Zdravo!","Ahoj!","Goddag!","Hallo!","Tere!","Hei!","Salut!","გამარჯობა!","Hallo!","Γειάσου!","नमस्ते!","Helló!","Halló!","Halo!","Ciao!","こんにちは！","សួរស្តី","여보세요!","Sveiki!","Здраво!","Hei","سلام!","Cześć!","Olá!","Bună!","Привет!","Здраво!","Ahoj!","Zdravo!","¡Hola!","Hallå!","สวัสดี","Merhaba!","Привіт!","chào"];
  Color _background = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  "Flutter UI Layouts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Theme.of(context).accentColor),
            ),
            ListTile(
              title: Text("Row and Column"),
              onTap: () {
                Navigator.pushNamed(context, "/rowcolumn");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Stack"),
              onTap: () {
                Navigator.pushNamed(context, "/second");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Indexed Stack"),
              onTap: () {
                Navigator.pushNamed(context, "/second");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Grid"),
              onTap: () {
                Navigator.pushNamed(context, "/grid", arguments: _helloList);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Table"),
              onTap: () {
                Navigator.pushNamed(context, "/table", arguments: _helloList);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Flow"),
              onTap: () {
                Navigator.pushNamed(context, "/second", arguments: _helloList);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Wrap"),
              onTap: () {
                Navigator.pushNamed(context, "/wrap");
              },
            ),
            Divider(),
            ListTile(
              title: Text("ListView"),
              onTap: () {
                Navigator.pushNamed(context, "/listview", arguments: _helloList);
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    _background = Helper.generateRandomColor();
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width - 20,
                height: 200.0,
                decoration: BoxDecoration(color: _background),
                child: Center(
                  child: Text(
                    "tap to change background color",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
