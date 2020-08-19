import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: SafeArea(
          child:Card( 
            margin: EdgeInsets.symmetric(vertical: 200.0, horizontal: 25.0),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/pp.jpg'),
              ),
                Column(
                  children: <Widget>[Text(
                  'Paulo Vilarinho',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.teal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                 ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.teal.shade300,
                    fontSize: 16,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
                ),
              ],
              )
              ]
            ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              buildCard('+55 86 988513391', Icons.phone),
              buildCard('paulotarsobranco@gmail.com', Icons.email),
            ],
          ),
        ),
        ),
      ),
    ),
  );
}

Card buildCard(String text, IconData icon) {
  return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.teal,
            fontSize: 15.0,
          ),
        ),
      ));
}
