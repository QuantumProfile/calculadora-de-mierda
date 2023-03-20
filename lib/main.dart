import 'package:basic_calculator/Design/States/global_states.dart';
import 'package:basic_calculator/Design/States/individual_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'Design/MainPage.dart';

void main() {
  App.globalState.addState('buttonModes',{'mode':'normal'});
  runApp(const App());
}
class App extends StatelessWidget{
  static var globalState=GlobalStatesController();
  static var localState=IndividualStatesController();
  static var errorHandlingString='empty';
  static var errorHandlingMap={'constructor':Key(''),'write':Key('')};
  const App({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic calculator',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState()=>_HomeState();
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      endDrawer: const Drawer(
        child: Text('Config :v'),
      ),
      appBar: AppBar(
        title: const TeXView(child: TeXViewDocument(
          r"""$$\int_{-\infty }^{\infty }e^{-ax^{2}} \mathrm{d} x=\sqrt{\frac{\pi }{a}}$$ """
        )),
      ),
      body: MainPage(),
    );
  }
}