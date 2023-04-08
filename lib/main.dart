import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(DicePage());
}

class DicePage extends StatefulWidget {
  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDie = 1;
  var rightDie = 1;

  void changeDie() {
    setState(() {
      leftDie = Random().nextInt(6) + 1;
      rightDie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                      onTap: () => changeDie(),
                      child: Image.asset('images/dice$leftDie.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => changeDie(),
                    child: Image.asset('images/dice$rightDie.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
