import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  String getBMI() {
    _bmi = (weight)/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi >18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher body weight than normal. Try to exercise more.';
    } else if (_bmi >18.5) {
      return 'You have a Normal body weight. Good job!';
    } else {
      return 'You have a lower body weight than normal. Try to eat more.';
    }
  }

}