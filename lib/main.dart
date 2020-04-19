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
        body: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/nakul.jpg'),
            ),
            Text(
                "Nakul Rajan Kumar",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                )
            ),
            Text(
                "Software Developer",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'SourceSansPro',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25)
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                    size: 25
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '++1 111 1111',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                      fontSize: 25
                    ),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}