import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BloodDonationUI(),
    );
  }
}

class BloodDonationUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true, // Centers the title in the AppBar
        title: Text(
          "Need Blood",
          style: TextStyle(
            color: Colors.white, // Sets the text color to white
            fontSize: 20,        // Adjust font size if necessary
            fontWeight: FontWeight.bold, // Makes the text bold
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.white), // Ensures the "+" icon is white
            onPressed: () {
              // Action for the "+" button
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Ensures the Column is centered
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.bloodtype,
                size: 50,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Donate Blood",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

