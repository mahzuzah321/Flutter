import 'package:flutter/material.dart';

class GATE_POSE_LEFT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/GATE POSE LEFt.gif')),
              Text("GATE POSE LEFT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:45",style: TextStyle(fontSize: 15),),
              Text("Start in a kneeling position with your thighs vertical to the floor. Extend your left leg out to your side. Rest your left hand on your left leg and reach your right arm overhead. Bend your upper body to your left. Hold for a few seconds. Return and repeat the exercise."),



            ],




          ),

        ) );
  }

}