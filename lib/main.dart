import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  int leftDiceNum=1;
  int rightDiceNum=1;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            child: FlatButton(

          padding: EdgeInsets.symmetric(horizontal:8, vertical:8),
          onPressed: () {
            print('dice 1 is rolled');
            setState(() {
              leftDiceNum=Random().nextInt(6)+1;
              rightDiceNum=Random().nextInt(6)+1;
              
            });
            
          },
          child: Image.asset('images/dice$leftDiceNum.png'),
        )),
        // Button 1
        Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal:8, vertical:8),
          onPressed: () {
            print('dice 2 is rolled');
            setState(() {
              rightDiceNum=Random().nextInt(6)+1;
              leftDiceNum=Random().nextInt(6)+1;
            });
          },
          child: Image.asset('images/dice$rightDiceNum.png'),
        )),
        //Button 2
      ],
    );
  }
}
