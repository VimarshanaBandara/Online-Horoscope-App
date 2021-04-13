import 'package:flutter/material.dart';
import 'package:horoscope/horoscope_flutter.dart';
import 'package:online_horoscope/splashScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
    );
  }
}

