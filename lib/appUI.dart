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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      cat('pizza'),
                      cat('sandwich'),
                      cat('hamburger'),
                      cat('soda'),
                      cat('ice-cream'),
                    ],
                  ),
                  SizedBox(height: 30, width: double.infinity),
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
