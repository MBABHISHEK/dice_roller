import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(   MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 5,120),
        body:GradientContainer([Color.fromARGB(255,26,2,80),
            Color.fromARGB(255,45,7,98)]),
    )
  )
  );
}


