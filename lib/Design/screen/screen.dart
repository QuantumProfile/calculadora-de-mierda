import 'package:basic_calculator/Design/screen/input.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Input(key: Key('input'),)
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.lightGreenAccent,
          ),
        )
      ],
    );
  }
}