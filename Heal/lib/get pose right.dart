import 'package:flutter/material.dart';

class GATE_POSE_RIGHT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/Gate pose right.gif')),
              Text("GATE POSE RIGHT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:45",style: TextStyle(fontSize: 15),),
              Text("Start in a kneeling position with your thighs vertical to the floor. Extend your right leg out to your side. Rest your right hand on your right leg and reach your left arm overhead. Bend your upper body to your right. Hold for a few seconds. Return and repeat the exercise."),
              //Image(image: AssetImage('assets/squats.gif'))


            ],




          ),

        ) );
  }

}