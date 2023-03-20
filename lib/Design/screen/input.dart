import 'package:flutter/material.dart';

import '../../main.dart';

class Input extends StatefulWidget{
  const Input({super.key});

  @override
  State<StatefulWidget> createState() =>_InputState();
}
class _InputState extends State<Input>{
  var text;
  render(){
    if(mounted){
      setState(() {
        text=App.localState.getState(widget.key)['text'];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    App.localState.addState(widget.key,{'text':''},render);
    render();
    return Container(
      color: Colors.lightGreen,
      child: Center(child: Text(text)),
    );
  }

}