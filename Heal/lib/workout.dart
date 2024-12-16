import 'package:flutter/material.dart';
import 'package:heal2/exercise.dart';
import 'package:heal2/exercise1.dart';
import 'package:heal2/exercise2.dart';
import 'package:heal2/exercise3.dart';
import 'package:heal2/exercise4.dart';
import 'package:heal2/exercise5.dart';
import 'package:heal2/exercise6.dart';
import 'package:heal2/exercise7.dart';
import 'package:heal2/exercise8.dart';
import 'package:heal2/exercise9.dart';
class workout extends StatefulWidget {
  const workout({Key? key}) : super(key: key);

  @override
  work createState() => work();
}

class work extends State<workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 300,
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(
          "Workout",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontWeight: FontWeight.w900),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (2).png'),
                        fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Icon(Icons.home,size: 50,color: Colors.white,),
                      // Text(
                      //   "Home",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      //    )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise1()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (7).png'),fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //  Icon(Icons.search,size: 50,color: Colors.white,),
                      // Text(
                      //  "Search",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      //  )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise2()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (9).png'),fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.settings,size: 50,color: Colors.white,),
                      //  Text(
                      //  "Settings",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      // )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise3()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (10).png'),fit: BoxFit.cover),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      //  Text(
                      //    "Books",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      //  )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise4()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/2022-07-26.png'),fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      // Text(
                      //   "Books",
                      // style: TextStyle(color: Colors.white, fontSize: 30),
                      //)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise5()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/2022-07-26 (1).png'),fit: BoxFit.cover),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      // Text(
                      //  "Books",
                      //  style: TextStyle(color: Colors.white, fontSize: 30),
                      //  )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise6()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (13).png'),fit: BoxFit.cover),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      //  Text(
                      //    "Books",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      //  )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise7()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (19).png'),fit: BoxFit.cover),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      // Text(
                      //  "Books",
                      //  style: TextStyle(color: Colors.white, fontSize: 30),
                      // )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise8()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/Screenshot (21).png'),fit: BoxFit.cover),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      //  Text(
                      //    "Books",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      //  )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exercise9()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/2022-07-26 (4).png'),fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Icon(Icons.book,size: 50,color: Colors.white,),
                      //  Text(
                      //    "Books",
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      //   )
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ),
      ),
    );
  }
}