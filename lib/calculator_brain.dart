import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  late double _bmi;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Color GetColor() {
    if (_bmi >= 40) {
      return Colors.brown;
    } else if (_bmi >= 35 && _bmi <= 39.9) {
      return Color(0xFFdb2e2e);
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return Colors.red;
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return Colors.yellow;
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return Color(0xFF24D876);
    } else if (_bmi >= 17 && _bmi <= 18.4) {
      return Colors.purpleAccent;
    } else if (_bmi >= 16 && _bmi <= 16.9) {
      return Colors.pinkAccent;
    } else {
      return Colors.pinkAccent;
    }
  }

  String GetResult() {
    if (_bmi >= 40) {
      return 'OBESE CLASS 3';
    } else if (_bmi >= 35 && _bmi <= 39.9) {
      return 'OBESE CLASS 2';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'OBESE CLASS 1';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'NORMAL';
    } else if (_bmi >= 17 && _bmi <= 18.4) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 16 && _bmi <= 16.9) {
      return 'SEVERELY UNDERWEIGHT';
    } else {
      return 'VERY SEVERELY UNDERWEIGHT';
    }
  }

  String GetInterpretation() {
    if (_bmi >= 40) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 35 && _bmi <= 39.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You have a normal body weight.Good job!';
    } else if (_bmi >= 17 && _bmi <= 18.4) {
      return 'You have a lower than normal body weight. You should eat more.';
    } else if (_bmi >= 16 && _bmi <= 16.9) {
      return 'You have a lower than normal body weight. You should eat more.';
    } else {
      return 'You have a lower than normal body weight. You should eat more.';
    }
  }
}
