import 'package:basic_calculator/Design/keyboard/buttons/buttonTemplate.dart';
import 'package:basic_calculator/Design/keyboard/buttons/buttons.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class ScientificKeyboard extends StatelessWidget{
  const ScientificKeyboard({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              Button(color: Colors.blueGrey,type:'scientific',modes: {
                'normal':ButtonTemplate(reads: 'Shift',does: (){
                  //print('hola');
                  App.globalState.setState('buttonModes',{'mode':'shift'});
                  //print(App.globalState.getState('buttonModes')['mode']);
                }),
                'shift':ButtonTemplate(reads: 'Normal',does: (){
                  App.globalState.setState('buttonModes', {'mode':'normal'});
                }),
                'alpha':ButtonTemplate(reads: 'Shift',does: (){
                  App.globalState.setState('buttonModes', {'mode':'shift'});
                })
              },key: UniqueKey(),),
              Button(color: Colors.blueGrey,type:'scientific',modes: {
                'normal':ButtonTemplate(reads: 'Alpha',does: (){
                  App.globalState.setState('buttonModes', {'mode':'alpha'});
                }),
                'shift':ButtonTemplate(reads: 'Alpha',does: (){
                  App.globalState.setState('buttonModes', {'mode':'alpha'});
                }),
                'alpha':ButtonTemplate(reads: 'Normal',does: (){
                  App.globalState.setState('buttonModes', {'mode':'normal'});
                })
              },key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
            ]
          ),
          TableRow(
            children: [
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
            ]
          ),
          TableRow(
            children: [
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
            ]
          ),
          TableRow(
            children: [
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
            ]
          ),
          TableRow(
            children: [
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
              Button(color: Colors.blueGrey,type:'scientific',key: UniqueKey()),
            ]
          )
        ],
      ),
    );
  }
}