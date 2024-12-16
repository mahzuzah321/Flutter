import 'package:flutter/material.dart';
import 'package:heal2/CRESCENT%20LOW%20LUNGE%20WITH%20ARM%20EXTENDED%20UP%20LEFT.dart';
import 'package:heal2/CRESCENT%20LOW%20LUNGE%20WITH%20CACTUS%20ARMS%20LEFT.dart';
import 'package:heal2/Cobras.dart';
import 'package:heal2/GATE%20POSE%20LEFt.dart';
import 'package:heal2/HUMBLE%20WARRIOR%20LEFT.dart';
import 'package:heal2/REVERSE%20WARRIOR%20LEFT.dart';
import 'package:heal2/STANDING%20KNEE%20TO%20CHEST.dart';
import 'package:heal2/Seated%20cat%20cow.dart';
import 'package:heal2/get%20pose%20right.dart';
import 'package:heal2/half%20locust%20pose.dart';

class yoga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Stack(
            children: <Widget>[
              Container(
                height: size.height * .35,
                decoration: BoxDecoration(
                  color: Color(0xFFEFAB91),
                ),
              ),
              SafeArea(
                  child:Column(

                      children: <Widget>[
                        SizedBox(height: size.height*0.005,),

                        Text('Yoga',style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10,),

                        Text('Yoga means addition'),
                        SizedBox(height: 5,),
                        Text('addition of energy,strength and brayty'),
                        SizedBox(height: 5,),
                        Text('to body mind and soul',),
                        SizedBox(height: 110,),



                        Expanded(

                            child: SingleChildScrollView(
                              child: Column(

                                children: <Widget>[
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>COBRAS()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          //margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)

                                                )
                                              ]
                                          ),
                                          alignment: Alignment.center,
                                          child: const Text('session1'),

                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>CRESCENT_LOW_LUNGE_WITH_ARM_EXTENDED_UP_LEFT()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          // margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>CRESCENT_LOW_LUNGE_WITH_CACTUS_ARMS_LEFT()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          // margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>GATE_POSE_RIGHT()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          // margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>GATE_POSE_LEFT()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          //  margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>HUMBLE_WARRIOR_LEFT()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          //  margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>HALF_LOCUST_POSE()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          // margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>SEATED_CAT_COW()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          //   margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>Standing_knee_to_chest()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          // margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                  SizedBox(height: 10,),
                                  Container(
                                      child: RaisedButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>REVERSE_WARRIOR_LEFT()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          //margin: EdgeInsets.symmetric(vertical: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  // color: Colors.white,
                                                  // borderRadius: BorderRadius.circular(20),
                                                  //  border: Border.all(),
                                                    color: Colors.black,
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                    offset: Offset(0,3)
                                                )
                                              ]
                                          ),


                                        ),

                                      )),
                                ],
                              ),
                            )
                        )
                      ] )
              )
            ]
        )
    );
  }


}