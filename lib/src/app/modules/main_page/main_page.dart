import 'package:checkpoint/src/app/modules/intro_page/intro_page.dart';
import 'package:checkpoint/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: lightTheme,
      home: IntroPage(),
    );
  }
}