import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/myphoto.jpg"),
              ),
              Text(
                "Aditya Prawira",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "Master of Robotics and Mechatronics Engineering",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  fontFamily: "SourceSansPro",
                  letterSpacing: 2.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
                child: Divider(color: Colors.teal.shade100),
                width: 150,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    "+61 402 555 502",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: "SourceSansPro",
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    "adityaprawira96@gmail.com",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: "SourceSansPro",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
