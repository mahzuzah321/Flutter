import 'package:flutter/material.dart';

class REVERSE_WARRIOR_LEFT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/REVERSE WARRIOR LEFT.gif')),
              Text("REVERSE WARRIOR LEFT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:50 ",style: TextStyle(fontSize: 15),),
              Text("Stand with your feet wider than shoulder-width apart. Turn your left foot to the left and your right foot 60 degrees to the left. Lower your body until your left thigh is almost parallel to the floor. Raise your arms to your sides with your palms down. Inhale, rest your right hand on your right leg, and lift your left arm up toward the ceiling for a big stretch along your left side. Draw your belly in, tuck your tailbone down. Take your gaze up to your left hand. Hold this position.")


            ],




          ),

        ) );
  }

}