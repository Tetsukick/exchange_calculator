import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exchangecalculator/pages/calculator_page.dart';

import 'Util/neumorphic_theme.dart';

class App extends StatelessWidget {
  const App();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: context.watch(),
      home: Builder(
        builder: (BuildContext context) {
          return MultiProvider(
            providers: [
              ProxyProvider0<NeumorphicTheme>(update: (context,_) =>
              MediaQuery.platformBrightnessOf(context) == Brightness.light
                  ? lightNeumorphicTheme : darkNeumorphicTheme),
            ],
            child: CalculatorPage(),
          );
        },
      ),
    );
  }
}