import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('Dice'),
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FloatingActionButton(onPressed: () { 
              print('left button clecked');
            },
            child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
              child: FloatingActionButton(onPressed: () { 
                print('Right button clecked');
              },
              child: Image.asset('images/dice1.png'),
              ),
          ),
        ],
      ),
    );
  }
}

