import 'package:basic_calculator/Design/keyboard/buttons/buttonTemplate.dart';
import 'package:basic_calculator/Design/keyboard/buttons/buttons.dart';
import 'package:flutter/material.dart';

class MainKeyboard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                Button(color: Colors.grey,type: 'main',key: UniqueKey(),),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
              ]
            ),
            TableRow(
              children: [
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
              ]
            ),
            TableRow(
              children: [
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
              ]
            ),
            TableRow(
              children: [
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',modes: const {
                  'normal':ButtonTemplate(reads: r"""$$\times 10^{x}$$"""),
                  'shift':ButtonTemplate(reads: 'π',writes: 'π'),
                  'alpha':ButtonTemplate(reads: 'e')
                },key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
                Button(color: Colors.grey,type: 'main',key: UniqueKey()),
              ]
            )
          ],
      ),
    );
  }
}