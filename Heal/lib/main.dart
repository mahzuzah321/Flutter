import 'package:flutter/material.dart';
import 'package:heal2/period.dart';


import 'package:heal2/workout.dart';
import 'package:heal2/yoga.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Heal",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: Colors.white),
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF48FB1),
              icon: Icon(Icons.all_inbox),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFF48FB1),
              icon: Icon(Icons.account_box),
              label: "account",
            ),
          ],
        ),
        body: Stack(children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF48FB1),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        color: Color(0xFFF48FB1),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/hand.png'))),
                  ),
                ),
                Text(
                  'Good Morning',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/search.png'))),
                        ),
                      ),
                      Text('Search')
                    ],
                  ),
                ),
                Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                      Container(
                          child: RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(0.1),
                                alignment: Alignment.bottomCenter,
                                child: const Text('Diet'),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(13),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/diet.jpeg'))),
                              ))),
                      Container(
                          child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => workout()));
                              },
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(0.1),
                                alignment: Alignment.bottomCenter,
                                child: const Text('Workout'),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(13),
                                    image: DecorationImage(
                                      image: AssetImage('assets/workout.jpg'),
                                    )),
                              ))),
                      Container(
                          child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => period()));
                              },
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(0.1),
                                alignment: Alignment.bottomCenter,
                                child: const Text('Menstruation Tips'),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(13),
                                    image: DecorationImage(
                                      image: AssetImage('assets/period.jpeg'),
                                    )),
                              ))),
                      Container(
                          child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => yoga()));
                              },
                              color: Colors.white,
                              child: Container(
                                  padding: EdgeInsets.all(0.1),
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('Yoga'),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(13),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/yoga2.jpeg')))))),
                    ])),
              ],
            ),
          ))
        ]));
  }
}
