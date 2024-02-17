import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'locationsearchscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData().then((_) {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WeatherScreen()),
      );
    });
  }

  Future<void> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: _isLoading
            ? Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Image.asset('lib/assets/weather.png',fit:BoxFit.cover
                  ,)
              ],
            )
            : null
      ),
    );
  }
}
