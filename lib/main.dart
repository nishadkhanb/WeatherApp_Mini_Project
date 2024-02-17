import 'package:flutter/material.dart';
import 'package:weather_app/view/locationsearchscreen.dart';
import 'package:weather_app/view/splash.dart';


void main() {
  runApp(const Weather_App());
}

class Weather_App extends StatelessWidget {
  const Weather_App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
