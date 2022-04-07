import 'package:checkpoint/src/utils/export.dart';
import 'package:flutter/material.dart';

class StandardPage extends StatelessWidget{
  final String title;
  final Widget body;

  StandardPage({
    required this.title,
    required this.body,
  });

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}