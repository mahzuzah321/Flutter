import 'package:flutter/material.dart';

class HUMBLE_WARRIOR_LEFT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/HUMBLE WARRIOR LEFT.gif')),
              Text("HUMBLE WARRIOR LEFT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:50",style: TextStyle(fontSize: 15),),
              Text("Stand with your feet hip-distance apart. Take your left foot forward while keeping your right leg straight. Turn your right foot 60 degrees to your right. Lower your body until your left thigh is almost parallel to the floor. Draw your belly in and tuck your tailbone down. Interlace your fingers behind you. Inhale, lift your chest and straighten your arms. Exhale, fold forward to the inside of your left knee. Lift your arms up and forward. Slowly return and repeat."),
              //Image(image: AssetImage('assets/squats.gif'))


            ],




          ),

        ) );
  }

}