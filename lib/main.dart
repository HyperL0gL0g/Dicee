import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main()
 {
  return  runApp(MaterialApp(
    home : Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dicee',
        ),
      ),

      body :Dice(),
    ),
  ),
  );
}

class Dice  extends StatefulWidget{
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var left = 1;

  var right = 1;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 60,10, 60),
      child: Center(
        child: Row(
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: (){
                      setState(() {
                        var randomizer = new Random(); // can get a seed as a parameter
                        var num = randomizer.nextInt(6);
                        left=num+1;
                      });
                      },
                  child: Image(
                    image: AssetImage('assets/dice$left.png'),
                  ),
                ),

              ),
              SizedBox(width: 8),
              Expanded(
                flex: 1,

          child: FlatButton(
            onPressed: (){
                setState(() {
                  var randomizer = new Random(); // can get a seed as a parameter
                  var num = randomizer.nextInt(6);
                  right=num+1;

                });
                } ,
            child: Image(
              image: AssetImage('assets/dice$right.png'),
            ),
          ),
              ),
            ],
        ),
      ),
    );
  }
}

