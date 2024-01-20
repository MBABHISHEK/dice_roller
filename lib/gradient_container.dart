import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';
import 'styled_text.dart';
import '';

const startAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget{

  GradientContainer(this.colors,{super.key});
  final List<Color> colors;

  @override
  Widget build(context)
  {
    return (Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:colors,
            begin:startAlignment,
            end:endAlignment,
          )
      ),
      child:   Center(
        child:DiceRoller()
      ),
    ));
  }

}