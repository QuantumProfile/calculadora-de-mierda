import 'package:flutter/material.dart';

class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            color:Colors.lightGreen
          ),
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