import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exchangecalculator/pages/calculator_page.dart';

class App extends StatelessWidget {
  const App();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: context.watch(),
      home: CalculatorPage(),
    );
  }
}