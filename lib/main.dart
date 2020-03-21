import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matibmi/ResultsScreen.dart';

import './input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => Results(),
      },
      theme: ThemeData(
          primaryColor: Color(0xFF5398d9),
          accentColor: Color(0xFFd96b0c),
          scaffoldBackgroundColor: Color(0xFF14325c),
          textTheme: TextTheme(
            body1: TextStyle(
              color: Color(0xFF14325c),
            ),
          )),
      initialRoute: '/',
    );
  }
}
