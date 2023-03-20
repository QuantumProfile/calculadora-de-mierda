import '../../../main.dart';

class ButtonTemplate{
  static void tuputamadredart(){}
  const ButtonTemplate({this.reads='', this.writes='', this.does=tuputamadredart});
  final String reads;
  final String writes;
  final Function() does;
  write(){
    App.localState.setState('input', {'text':App.localState.getState('input')['text']+writes});
  }
}