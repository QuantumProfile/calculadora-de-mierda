import 'package:basic_calculator/Design/keyboard/mainKeyboard.dart';
import 'package:basic_calculator/Design/keyboard/scientificKeyboard.dart';
import 'package:flutter/material.dart';

class KeyboardBackground extends StatelessWidget{
  const KeyboardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceOrientation=MediaQuery.of(context).orientation;
    var children=[
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.greenAccent,
          child: ScientificKeyboard(),
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.red,
          child: MainKeyboard(),
        ),
      )
    ];
    if(deviceOrientation==Orientation.portrait){
      return Column(
        children: children,
      );
    }
    return Row(
      children: children,
    );
  }
}