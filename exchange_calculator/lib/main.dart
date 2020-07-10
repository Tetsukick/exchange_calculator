import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exchangecalculator/models/calculator_logic.dart';
import 'package:exchangecalculator/Util/neumorphic_theme.dart';

import 'app.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      Provider(create: (context) => GlobalKey<NavigatorState>()),
      ProxyProvider0<NeumorphicTheme>(update: (context,_) => lightNeumorphicTheme),
      ChangeNotifierProvider<Calculator>(create: (context) => Calculator())
    ],
    child: const App(),
  ),
);