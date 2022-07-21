import 'package:flutter/material.dart';

import 'input_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calc',
      theme: ThemeData.dark().copyWith(
        // Dark Blue: 0xFF0A0E21 || Purple: 0xFF9122A8 || White: 0xFFFFFFFF Other
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          titleTextStyle: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 25.0,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
          headline2: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
          bodyText1: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
          bodyText2: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
/*

          IF you want to change the Theme of the "floatingActionButton" at the BEGINNING:

          floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF9122A8),
          foregroundColor: Color(0xFFFFFFFF),
        ),
*/
      ),
      home: const SafeArea(
        child: InputPage(title: 'BMI Calculator'),
      ),
    );
  }
}
