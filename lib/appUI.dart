import 'package:flutter/material.dart';

class AppUI extends StatelessWidget {
  cat({String catImg, String txt}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: 40.0,
          child: Image.asset(
            'lib/images/$catImg.png',
            height: 50,
          ),
        ),
        Text(
          '$txt',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
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
                  Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cat(catImg: 'pizza', txt: 'Pizza'),
                        cat(catImg: 'hamburger', txt: 'Burger'),
                        cat(catImg: 'sandwich', txt: 'Sandwich'),
                        cat(catImg: 'bread', txt: 'Breads'),
                        cat(catImg: 'coffee', txt: 'Coffee'),
                        cat(catImg: 'hot-dog', txt: 'Hot Dog'),
                        cat(catImg: 'pie', txt: 'Pie'),
                        cat(catImg: 'muffin', txt: 'Muffin'),
                        cat(catImg: 'spaguetti', txt: 'Noodles'),
                        cat(catImg: 'soda', txt: 'Drinks'),
                        cat(catImg: 'grid', txt: 'More'),
                      ],
                    ),
                  ),
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
