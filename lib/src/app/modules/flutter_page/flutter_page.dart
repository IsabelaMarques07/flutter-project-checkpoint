import 'dart:html';

import 'package:checkpoint/src/app/components/standard_button.dart';
import 'package:checkpoint/src/app/components/standard_page.dart';
import 'package:checkpoint/src/app/modules/triva_page/triva_page.dart';
import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return StandardPage(
      title: 'BuildContext', 
      body: Center(
        child: Column(
          children: [
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 5),
             height: 40,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: Colors.black, width: 2),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: const [
                Text('BuildContext'),
             ],)
           ),
          const SizedBox(height: 20),
          const Text(
            'Para o que serve o BuildContext?',
            textAlign: TextAlign.center,
            style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          const Text(
            '     Os widgets estão em uma árvore, distribuídos em um hierarquia de pais e filhos, e a função do BuildContext é localizar cada widget nessa árvore.\n      Cada Context pertence apenas a um Widget. Podemos entender também que, se um determinado Widget "A" possuí filhos, o Context do Widget "A" será o contexto pai dos seus filhos.',
            style:TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
          const SizedBox(height: 40),
           StandardButton(
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => TrivaPage()));
            }, 
            buttonText: 'Próxima tela'),

        ]),
        ),
      );
  }
}