import 'package:flutter/material.dart';

import 'pages/weather_info_page.dart';
import 'models/weather_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final WeatherModel model = WeatherModel();

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
      home: MyHomePage(
        title: 'Flutter Masters',
        model: model,
      ),
      routes: {
//        '/weather_info': (BuildContext context) => WeatherInfoPage(model),
        '/weather_info': (BuildContext context) => WeatherInfoPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.model}) : super(key: key);

  final String title;
  final WeatherModel model;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String city = "Manila";
  String countryCode = "ph";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter city name',
              ),
              textAlign: TextAlign.center,
              onSubmitted: (String value) {
                city = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter 2-character country code',
              ),
              textAlign: TextAlign.center,
              onSubmitted: (String value) {
                countryCode = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                widget.model
                    .fetchWeatherData(city: city, countryCode: countryCode)
                    .then(
                      (_) =>
                          Navigator.pushNamed(context, "/weather_info")
                    );
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
