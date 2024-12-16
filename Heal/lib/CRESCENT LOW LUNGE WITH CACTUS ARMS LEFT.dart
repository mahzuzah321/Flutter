import 'package:flutter/material.dart';

class CRESCENT_LOW_LUNGE_WITH_CACTUS_ARMS_LEFT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/CRESCENT LOW LUNGE WITH CACTUS ARMS LEFT.gif')),
              Text("CRESCENT LOW LUNGE WITH CACTUS ARMS LEFT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:45",style: TextStyle(fontSize: 15),),
              Text("Start in a lunge position, but with your right leg on the floor. Tuck your pelvis in and sink your hips. Raise your arms up by your ears with your palms facing forward and fingers spread wide. Lift your chest up and back while bending your arms at 90 degrees. Your arms should be in line with your upper body. Keep your neck natural. Return and repeat."),
              //Image(image: AssetImage('assets/squats.gif'))


            ],




          ),

        ) );
  }

}