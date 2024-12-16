import 'package:flutter/material.dart';

class CRESCENT_LOW_LUNGE_WITH_ARM_EXTENDED_UP_LEFT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/CRESCENT LOW LUNGE WITH ARM EXTENDED UP LEFT.gif')),
              Text("CRESCENT LOW LUNGE WITH ARM EXTENDED UP LEFT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:40 ",style: TextStyle(fontSize: 15),),
              Text("Start in a push-up position. Step your left foot forward to the inside of your left hand. Drop your right leg on the floor. Rotate your upper body to your left and reach your left arm to the sky. Take your gaze to your left hand. Hold this position."),
              //Image(image: AssetImage('assets/squats.gif'))


            ],




          ),

        ) );
  }

}