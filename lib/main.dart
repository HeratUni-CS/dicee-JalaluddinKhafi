import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
        ),
        body: dicePage(),
      ),
    ),
  );
}
class dicePage extends StatefulWidget {
  const dicePage({Key? key}) : super(key: key);

  @override
  State<dicePage> createState() => _dicePageState();
}

class _dicePageState extends State<dicePage> {
  var diceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('left button clecked');
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button clecked');
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
