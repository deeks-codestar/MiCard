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
        // Put everything inside safe area so it doesn't overflow in other layouts.
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )
              ),
              // NOTES: Anything to be within certain dimensions like the line,
              // Can be added into sized box.
              SizedBox(
                // Limit how wide in the screen
                width: 200,
                // NOTES: Heigth to get some distance from above n below
                height: 20,
                child: Divider(
                  color: Colors.teal.shade900,
                ),
              ),
              Container(
                // Provide margin outside the container separating text above.
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                // Padding within the container separating the text from the border.
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                      size: 25
                    ),
                    // To provide distance between elements in a row.
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Card provides rounded edges and feel of MD.
              // It does not support padding. Hence remove padding. But if you
              // need padding around the children of a card, you can wrap the
              // children inside padding.
              Card(
                margin: EdgeInsets.all(25),
                // Replace with ListTile use usually with Card. And very useful in
                // over using a row, since this is exactly what u need.
                child: ListTile(
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.teal.shade900,
                    size: 25,
                  ),
                  title: Text(
                    "yetagain@gmail",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: "SourceSansProRegular",
                      fontSize: 25,
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}