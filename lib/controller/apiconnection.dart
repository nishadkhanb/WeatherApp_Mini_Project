import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class WeatherService {
  Future<WeatherModel?> fetchWeatherData(String location) async {
    //final apiKey = '17d20887a6ef420da6361007241302';
    final apiUrl =
        'http://api.weatherapi.com/v1/current.json?key=17d20887a6ef420da6361007241302&q=$location&aqi=yes';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return WeatherModel.fromJson(jsonData);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
