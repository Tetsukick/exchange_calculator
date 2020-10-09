import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exchangecalculator/models/calculator_logic.dart';

import 'app.dart';

void main() {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runZoned(() {
    runApp(
      MultiProvider(
        providers: [
          Provider(create: (context) => GlobalKey<NavigatorState>()),
          ChangeNotifierProvider<Calculator>(create: (context) => Calculator())
        ],
        child: const App(),
      ),
    );
  }, onError: Crashlytics.instance.recordError);
}