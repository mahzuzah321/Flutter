import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class exercise3 extends StatefulWidget {
  const exercise3({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<exercise3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<exercise3> {

  //final int _duration = 10;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE4EC),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Crunch kicks'),
        //backgroundColor:Color(0xFFFCE4EC) ,


      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[


          Center(

            child: CircularCountDownTimer(
              controller: _controller,
              width: 100,
              height: 100,
              duration: 60,
              fillColor:Colors.black,
              ringColor: Colors.red,


            ),
          ),
          SizedBox(height: 20,),
          Image(image: AssetImage('assets/Crunch kicks.gif')),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              ElevatedButton(
                onPressed: (){
                  _controller.start();

                },

                child:Text('Start'),


              ),
              ElevatedButton(
                onPressed: (){
                  _controller.pause();
                },
                child:Text('Pause'),
              ),
              ElevatedButton(
                onPressed: (){
                  _controller.resume();
                },
                child:Text('Resume'),
              ),
              ElevatedButton(
                onPressed: (){
                  _controller.restart();
                },
                child:Text('Restart'),

              )
            ],
          ),

        ],
      ),

    );

  }
}