import 'package:flutter/material.dart';

class Standing_knee_to_chest extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/STANDING KNEE TO CHEST.gif')),
              Text("STANDING KNEE TO CHEST",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:55 ",style: TextStyle(fontSize: 15),),
              Text("Stand with your feet shoulder width apart, chest up and shoulders back. Lift your left knee up, and grab it with both hands. Then gently pull it towards your body as much as you can. Hold for a few seconds, switch sides and repeat.")


            ],




          ),

        ) );
  }

}