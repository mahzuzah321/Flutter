import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class exercise extends StatefulWidget {
  const exercise({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<exercise> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<exercise> {

  //final int _duration = 10;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE4EC),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Abdominal Crunches'),
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
              ringColor: Colors.amber,


            ),
          ),
          SizedBox(height: 20,),
          Image(image: AssetImage('assets/Abdominal Crunches.gif')),
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
