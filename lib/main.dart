import 'dart:async';

import 'package:FlutterTempScreenFinal/screen/LoginView.dart';
import 'package:FlutterTempScreenFinal/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //--------------------Widget initialisation-----------------------------------//
  WidgetsFlutterBinding.ensureInitialized();

  //--------------------ALERT CUSTOMISATION-----------------------------------//
  runZoned(() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(
        MyApp(),
      );
    });
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          cupertinoOverrideTheme: CupertinoThemeData(
            primaryColor: Colors.black87,
          ),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.black,
            textTheme: ButtonTextTheme.accent,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
          ),
          cursorColor: colorPrimary,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 10.0,
          ),
          cardTheme: CardTheme(
            margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.black, displayColor: Colors.indigo)),
      home: LoginView(),
    );
  }
}
