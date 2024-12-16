import 'package:flutter/material.dart';

class period extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Menstruation',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cycle',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 100,
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
                                        child: const Text('Foods to avoid'),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(13),
                                            image: DecorationImage(
                                                image: AssetImage('assets/avoid.jpeg'))),
                                      ))),
                              Container(
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      child: Container(
                                        padding: EdgeInsets.all(0.1),
                                        alignment: Alignment.bottomCenter,
                                        child: const Text('Foods to consume'),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(13),
                                            image: DecorationImage(
                                              image: AssetImage('assets/consume.jpeg'),
                                            )),
                                      ))),
                              Container(
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      child: Container(
                                        padding: EdgeInsets.all(0.1),
                                        alignment: Alignment.bottomCenter,
                                        child: const Text('Home remedies'),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(13),
                                            image: DecorationImage(
                                              image: AssetImage('assets/remedies.jpeg'),
                                            )),
                                      ))),
                              Container(
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      child: Container(
                                          padding: EdgeInsets.all(0.1),
                                          alignment: Alignment.bottomCenter,
                                          child: const Text('Period hygiene'),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(13),
                                              image: DecorationImage(
                                                  image:
                                                  AssetImage('assets/hygene.png')))))),
                              Container(
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      child: Container(
                                          padding: EdgeInsets.all(0.1),
                                          alignment: Alignment.bottomCenter,
                                          child: const Text('Mental health'),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(13),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/mental health.png')))))),
                            ])),
                  ],
                ),
              ))
        ]));
  }
}
