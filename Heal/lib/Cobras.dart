import 'package:flutter/material.dart';

class COBRAS extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/COBRAS.gif')),
              Text("COBRAS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:55",style: TextStyle(fontSize: 15),),
              Text("Lie down on your stomach and bend your elbows with your hands beneath your shoulders. Keep your toes back and your feet and legs relaxed on the ground. Then push your chest up off the ground as far as possible. Return to the start position and repeat."),
              //Image(image: AssetImage('assets/squats.gif'))


            ],




          ),

        ) );
  }

}