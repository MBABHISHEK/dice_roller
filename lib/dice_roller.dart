import 'package:flutter/material.dart';
import 'styled_text.dart';
import  'dart:math';

final randomizer=Random();
class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

/*underscore is private class*/

class _DiceRollerState extends State<DiceRoller>
{

  var activeDiceImage='assets/images/dice-1.png';
  void rollDice()
  {
    setState(() {
      var diceRoll=randomizer.nextInt(6)+1;
      activeDiceImage='assets/images/dice-${diceRoll}.png';
    });
    print('hai');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage,width: 200,),
        SizedBox(height:20),
        TextButton(onPressed:rollDice,
            child:StyledText('Roll Dice!'))

      ],
    );
  }
}