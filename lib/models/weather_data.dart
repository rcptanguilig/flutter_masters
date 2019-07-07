import 'dart:async';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;


class WeatherModel extends Model {

  String rawJSONdata = "test";

  Future<bool> fetchWeatherData({String city, String countryCode}) async {
    notifyListeners();

    try {
      final response = await http.get(
          "https://api.openweathermap.org/data/2.5/forecast?q=$city,$countryCode&APPID=eac89ba91b18647eb4f83f43dce43b60");

      if (response.statusCode != 200 && response.statusCode != 201) {
        notifyListeners();
        return false;
      }

      print(response.body);
      rawJSONdata = response.body;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      notifyListeners();
      return false;
    }
  }
}

// "https://api.openweathermap.org/data/2.5/forecast?q=Manila,ph&APPID=eac89ba91b18647eb4f83f43dce43b60"

//print("Request: \(String(describing: response.request))")   // original url request
//print("Response: \(String(describing: response.response))") // http url response
//print("Result: \(response.result)")
//
//if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//print("Data: \(utf8Text)")
//}
