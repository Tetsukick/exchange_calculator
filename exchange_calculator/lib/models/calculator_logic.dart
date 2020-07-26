import 'package:exchangecalculator/Util/logger.dart';
import 'package:exchangecalculator/models/API/api.dart';
import 'package:exchangecalculator/models/currency.dart';
import 'package:exchangecalculator/models/get_rates_model.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends ChangeNotifier {
  num _value = 0;
  List<CalculatorVariable> _actions = [CalculatorNumber('0')];

  num get value => _value;
  CalculatorVariable get currentVariable => _actions.last;

  Rates _rates;
  Currency _baseCurrency = Currency.JPY;
  Currency _targetCurrency = Currency.USD;
  Currency get baseCurrency => _baseCurrency;
  Currency get targetCurrency => _targetCurrency;
  num _targetValue = 0;
  num get targetValue => _targetValue;

  void changeBaseCurrency(Currency currency) async {
    _baseCurrency = currency;

    await APIRequest<Map<String, dynamic>>().request(
        type: API.getRate,
        params: {
          "base": currency.unit,
        })
        .then((response) {
          if (response.status == Status.completed) {
            _rates = GetRatesResult.fromJson(response.data).rates;
            _targetValue = _value * _rates.ratesFromCurrency(_targetCurrency);
          }
    });

    notifyListeners();
  }

  void changeTargetCurrency(Currency currency) {
    _targetCurrency = currency;
    notifyListeners();
  }

  void add() {
    takeAction(
      CalculatorAdd(),
      when: _actions.last is! CalculatorAdd,
    );
  }

  void deduct() {
    takeAction(
      CalculatorDeduct(),
      when: _actions.last is! CalculatorDeduct,
    );
  }

  void multiply() {
    takeAction(
      CalculatorMultiply(),
      when: _actions.last is! CalculatorMultiply,
    );
  }

  void divide() {
    takeAction(
      CalculatorDivide(),
      when: _actions.last is! CalculatorDivide,
    );
  }

  void takeAction(
      CalculatorVariable action, {
        @required bool when,
      }) {
    if (when) {
      if (_actions.last is MathOperator) {
        _actions.removeLast();
      } else {
        _value = parseCalculatorActions(_actions);
      }
      _actions.add(action);
    }
    notifyListeners();
  }

  void reset() {
    _actions = [CalculatorNumber('0')];
    _value = 0;
    _targetValue = 0;
    notifyListeners();
  }

  void showResult() {
    _value = parseCalculatorActions(_actions);
    _targetValue = _value * _rates.ratesFromCurrency(_targetCurrency);
    notifyListeners();
  }

  void setValue(num number) {
    if (_actions.last is! CalculatorNumber) _value = 0;

    final stringifyedValue = _value.toString();
    if (_value == 0) {
      _value = number;
    } else {
      _value = int.parse(stringifyedValue + number.toString());
    }
    _targetValue = _value * _rates.ratesFromCurrency(_targetCurrency);

    notifyListeners();

    final lastAction = _actions.last;
    if (lastAction is CalculatorNumber) _actions.removeLast();

    _actions.add(CalculatorNumber(_value.toString()));
  }
}

abstract class CalculatorVariable {
  CalculatorVariable({this.value});

  final String value;
}

abstract class MathOperator {}

class CalculatorAdd extends CalculatorVariable with MathOperator {
  String value = '+';
}

class CalculatorMultiply extends CalculatorVariable with MathOperator {
  String value = '*';
}

class CalculatorDivide extends CalculatorVariable with MathOperator {
  String value = '/';
}

class CalculatorDeduct extends CalculatorVariable with MathOperator {
  String value = '-';
}

class CalculatorNumber extends CalculatorVariable {
  CalculatorNumber(this.value);

  final String value;
}

num parseCalculatorActions(List<CalculatorVariable> actions) {
  final List<String> mathVariables = [];

  actions.forEach((action) => mathVariables.add(action.value));

  final variablesLength = mathVariables.length;

  if (variablesLength.isEven) mathVariables.removeLast();

  final equation = mathVariables.join(' ');

  final num result = Parser().parse(equation).evaluate(
    EvaluationType.REAL,
    ContextModel(),
  );

  logger.info('$equation = $result');

  final prettierResult = isInteger(result) ? result.round() : result;

  return prettierResult;
}

bool isInteger(num value) {
  return value is int || value == value.roundToDouble();
}
