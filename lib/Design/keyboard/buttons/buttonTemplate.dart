import 'package:flutter/cupertino.dart';

import '../../../main.dart';

class ButtonTemplate{
  static void tuputamadredart(){}
  const ButtonTemplate({this.reads='', this.writes='', this.does=tuputamadredart});
  final String reads;
  final String writes;
  final Function() does;
  write(){
    //print('aca estoy');
    //var asd=Key('input');
    //App.errorHandlingMap['write']=asd;
    //print('esto dice todo: ${asd==App.errorHandlingMap['constructor']}');
    App.localState.setState(Key('input'), {'text':App.localState.getState(const Key('input'))['text']+writes});
    //print('estado: ${App.localState.getState(key)}');
  }
}