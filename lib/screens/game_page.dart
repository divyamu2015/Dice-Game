import 'dart:math';

import 'package:flutter/material.dart';


class DiceGamePage extends StatefulWidget {
  const DiceGamePage({super.key});
  
  @override
  State<DiceGamePage> createState() => _DiceGamePageState();
}

class _DiceGamePageState extends State<DiceGamePage> {
  
var currentDiceRoll=2;

 void rollDice(){
  setState(() {
      currentDiceRoll=Random().nextInt(6)+ 1 ; 
  });

  }
   
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        
        body: 
        Stack(
          children: [
            Container(
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>
                  [
                    Colors.purple,
                    Colors.indigo
                  ])
              ),
              
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                   'assets/images/dice-$currentDiceRoll.png',
                  height: 250,),
                 const SizedBox(height: 10,),
                  TextButton(
                    onPressed: (){
                      rollDice();
                    },
                     child: const Text('Roll Dice',
              style: TextStyle(fontSize: 30,
            //  fontWeight: FontWeight.bold,
              color: Colors.white),
              ))
                ],
              ),
            ),
           
          ],
        )
      ));
  }
}