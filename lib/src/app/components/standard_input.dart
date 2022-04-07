import 'package:flutter/material.dart';

class StandardInput extends StatelessWidget{
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;

  StandardInput({
    required this.label,
    this.userInputController,
    this.onEditingComplete,
  });

  @override 
  Widget build(BuildContext context){
    return TextFormField(
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }

}