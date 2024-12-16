import 'package:flutter/material.dart';

class HALF_LOCUST_POSE extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/HALF LOCUST POSE.gif')),
              Text("HALF LOCUST POSE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:40 ",style: TextStyle(fontSize: 15),),
              Text("Lie on your stomach with your legs extended, hands by your sides, and chin on the floor. Inhale and lift your right leg as high as possible. Hold for a few seconds and switch to the other leg. Repeat the exercise."),
              //Image(image: AssetImage('assets/squats.gif'))


            ],




          ),

        ) );
  }

}