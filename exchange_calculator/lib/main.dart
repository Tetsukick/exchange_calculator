import 'dart:async';
import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exchangecalculator/models/calculator_logic.dart';

import 'app.dart';

void main() async {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  Admob.initialize(testDeviceIds: [getAppId()]);
  Admob.requestTrackingAuthorization();

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

String getAppId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-8604906384604870~9900008387';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-8604906384604870~2693092896';
  }
  return null;
}

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-8604906384604870/3452615229';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-8604906384604870/5127684541';
  }
  return null;
}