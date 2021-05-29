import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have higher than normal body density. Try exercising and maintaing your food intake';
    } else if (_bmi > 18.5) {
      return 'You have a normal body density. continue exercising to remain fit and healthy';
    } else {
      return 'you have a lower body density than normal. Increase your food Consumption ';
    }
  }
}
