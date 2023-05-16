import 'dart:math';

import 'package:flutter/material.dart';
class Dies extends StatefulWidget {
  const Dies({Key? key}) : super(key: key);

  @override
  State<Dies> createState() => _DiesState();
}

class _DiesState extends State<Dies> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void changeDiceFace(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(title: Text('Dice App'),),
      body: Center(
        child: Row(
              children: [

                Expanded(child: TextButton(onPressed:(changeDiceFace), child: Image.asset("img/dice$leftdicenumber.jpeg"),)),
                TextButton(onPressed:(changeDiceFace), child:  Image.asset("img/dice$rightdicenumber.jpeg")),
                          ],
                        ),

                    ),

                );







  }
}
