import 'package:flutter/material.dart';

class SEATED_CAT_COW extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(

          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/Seated cat cow.gif')),
              Text("SEATED CAT COW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Duration 00:50 ",style: TextStyle(fontSize: 15),),
              Text("Sit cross-legged and rest your hands on your knees. As you inhale, lift your gaze and try to drive your chest out. On an exhale, tuck your chin, draw your lower belly in and round your back. Repeat the exercis")


            ],




          ),

        ) );
  }

}