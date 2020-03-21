import 'package:flutter/cupertino.dart';
import 'dart:math';

class Calculator {
  final int weight;
  final int height;
  double _bmi;

  Calculator({@required this.weight, @required this.height});
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi < 18.5)
      return 'Underweight';
    else
      return 'Correct';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You\'re fat.';
    else if (_bmi < 18.5)
      return 'You\'re to skinny! Go eat something!';
    else
      return 'Your BMI is just fine. Good job!';
  }
}
