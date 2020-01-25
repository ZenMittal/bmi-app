import 'package:flutter/material.dart';
import 'dart:math';

class BmiBrain {
  BmiBrain({@required this.height, @required this.weight});
  int height;
  int weight;

  double _bmi;
  String _result;
  String _interpretation;

  void calculateBmi() {
    _bmi = weight/ pow(height/100, 2);

    if(_bmi >= 25) {
      _result = 'Overweight';
      _interpretation = 'Your weight is more than healthy amount. Love yourself more and excercising more.';
    } else if (_bmi >= 18.5) {
      _result = 'Normal';
      _interpretation = 'Congratulations! Your body weight is healthy and normal';
    } else {
      _result = 'Underweight';
      _interpretation = 'Your weight is less than healthy amount. Love yourself more and eat more.';
    }
  }

  Map<String, String> getResult() {
    calculateBmi();
    return {
      'bmi': _bmi.toStringAsFixed(1),
      'result': _result,
      'interpretation': _interpretation
    };
  }

}