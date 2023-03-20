import 'package:basic_calculator/Design/keyboard/keyboard_background.dart';
import 'package:basic_calculator/Design/screen/screen.dart';
import 'package:flutter/material.dart';
class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context){
    var deviceOrientation=MediaQuery.of(context).orientation;
    var template; const padding = 20.0;
    var keyboardFlex=deviceOrientation==Orientation.portrait?2:1;
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        children: [
          Flexible(
            flex:1,
            child: Container(
              color: Colors.green,
              child: Screen(),
            ),
          ),
          Flexible(
            flex: keyboardFlex,
            child: Container(
              color: Colors.blueAccent,
              child: KeyboardBackground(),
            ),
          )
        ],
      ),
    );
  }
  
}