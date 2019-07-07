import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../models/weather_data.dart';

class WeatherInfoPage extends StatelessWidget {
//  final WeatherModel model;
//
//  WeatherInfoPage(this.model);
  WeatherInfoPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: ScopedModelDescendant<WeatherModel>(
        builder: (BuildContext context, Widget child, WeatherModel model) {
          return Text(model.rawJSONdata);
        },
      ),
    );
  }
}
