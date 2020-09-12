import 'package:flutter/material.dart';

class AppUI extends StatelessWidget {
  cat(String catImg) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      maxRadius: 30.0,
      child: Image.asset(
        'lib/images/$catImg.png',
        height: 40,
      ),
    );
  }

  catText(String txt) {
    return Text(
      '$txt',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 7),
                        child: Image(
                          height: 120,
                          width: 120,
                          image: AssetImage('lib/images/foodlogo.png'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cat('sandwich'),
                          cat('pizza'),
                          cat('hamburger'),
                          cat('soda'),
                          cat('ice-cream'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          catText('Sandwich'),
                          catText('Pizza'),
                          catText('Hamburger'),
                          catText('Soda'),
                          catText('Ice Cream')
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20, width: double.infinity),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[400],
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
