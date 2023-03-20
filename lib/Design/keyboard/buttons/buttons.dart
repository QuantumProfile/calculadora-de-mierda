import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:basic_calculator/main.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'buttonTemplate.dart';

class Button extends StatefulWidget{
  static const Map defaultModes={'normal':ButtonTemplate(),'shift':ButtonTemplate(),'alpha':ButtonTemplate()};
  Button({super.key, required this.color,required this.type, this.modes=defaultModes});
  String type;
  dynamic color;
  Map modes;
  @override
  State<Button> createState()=>_ButtonState();
}
class _ButtonState extends State<Button>{
  render(){
    if(mounted){
      setState(() {
        does=widget.modes[App.globalState.getState('buttonModes')['mode']].does;
        writes=widget.modes[App.globalState.getState('buttonModes')['mode']].writes;
        reads=widget.modes[App.globalState.getState('buttonModes')['mode']].reads;
        if(writes!='')widget.modes[App.globalState.getState('buttonModes')['mode']].write();
      });
    }
  }
  var does;
  var reads;
  var writes;
  @override
  Widget build(BuildContext context) {
    App.globalState.linkToState('buttonModes',widget.key,render);
    render();
    var showText=reads.contains('\$\$')?TeXView(
      child: TeXViewDocument(reads,
      style: const TeXViewStyle(
        contentColor: Colors.white,
      )
      )
    ):Text(
      reads,
      style: const TextStyle(
        color: Colors.white,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: does,
        child: Container(
          //width: widget.type=='main'?MediaQuery.of(context).size.width/6:MediaQuery.of(context).size.width/6,
          height: widget.type=='main'?MediaQuery.of(context).size.height/20:MediaQuery.of(context).size.height/25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: widget.color
          ),
          child: Center(child: showText),
        ),
      ),
    );
  }
}