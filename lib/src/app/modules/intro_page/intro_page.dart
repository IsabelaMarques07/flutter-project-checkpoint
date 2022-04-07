import 'package:checkpoint/src/app/components/standard_button.dart';
import 'package:checkpoint/src/app/components/standard_input.dart';
import 'package:checkpoint/src/app/components/standard_page.dart';
import 'package:checkpoint/src/app/modules/flutter_page/flutter_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return StandardPage(
      title: 'Home',
      body: Center(
        child: Column(children: [
          GestureDetector(
            onTap: (){ 
              Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterPage()));
              },
            child: ClipRect(
              child: Image.asset('assets/images/intro.jpg'),
              ),
          ),
          
          const SizedBox(height: 15),
          StandardInput(label: 'Primeiro input'),
          const SizedBox(height: 15),
          StandardInput(label: 'Segudno input'),
          const SizedBox(height: 30),
          Text(
            'Isabela\nRM86386\n3SIR',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
            ),
        ]),
      )
    );
  }
}