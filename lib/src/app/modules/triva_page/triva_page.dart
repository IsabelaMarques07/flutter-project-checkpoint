import 'package:checkpoint/src/app/components/standard_page.dart';
import 'package:flutter/material.dart';

class TrivaPage extends StatelessWidget{
  @override 
Widget build(BuildContext context){
    return StandardPage(
      title: 'Triva', 
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
                Text('Triva'),
             ],)
           ),
          const SizedBox(height: 20),
          const Text(
            'Quantos bits o cérebro humano processa por segundo?',
            textAlign: TextAlign.center,
            style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          const Text(
            '    A cada segundo, todos os nossos sentidos captam cerca de 11 milhões de bits de informações as mais variadas, porém, desse total impressionante, nós só processamos conscientemente escassos 40 bits. O resto cabe ao inconsciente processar.',
            style:TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),

        ]),
        ),
      );
  }
}