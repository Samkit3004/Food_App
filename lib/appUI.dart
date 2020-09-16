import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppUI extends StatelessWidget {
  cat({String catImg, String txt}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: 35.0,
          child: Image.asset(
            'lib/images/$catImg.png',
            height: 45,
          ),
        ),
        Text(
          '$txt',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  coloredCat(String item, Color colour, double wth) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      height: 36,
      width: wth,
      child: FlatButton(
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.all(1),
          child: Text(
            '$item',
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 2,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        color: colour,
        textColor: Colors.white,
      ),
    );
  }

  foodItems(String logo, String restaurant, String itimage, String itname) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 3,
        ),
      ),
      child: Card(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 3, color: Colors.grey),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 40.0,
                        child: Image.asset(
                          'lib/image/$logo.png',
                          height: 40,
                        ),
                      ),
                      Text(
                        '$restaurant',
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                        width: 9,
                      ),
                      Text('160'),
                      SizedBox(
                        height: 20,
                        width: 9,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              'lib/image/$itimage.jpg',
              height: 280,
              width: 280,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: Colors.grey),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '$itname',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellowAccent,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellowAccent,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellowAccent,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellowAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      margin: EdgeInsets.only(bottom: 15),
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
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      itemCount: 11,
                      // ignore: missing_return
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return cat(catImg: 'pizza', txt: 'PIZZA');
                            break;
                          case 1:
                            return cat(catImg: 'hamburger', txt: 'BURGER');
                            break;
                          case 2:
                            return cat(catImg: 'sandwich', txt: 'SANDWICH');
                            break;
                          case 3:
                            return cat(catImg: 'bread', txt: 'BREADS');
                            break;
                          case 4:
                            return cat(catImg: 'coffee', txt: 'COFFEE');
                            break;
                          case 5:
                            return cat(catImg: 'hot-dog', txt: 'HOT DOG');
                            break;
                          case 6:
                            return cat(catImg: 'pie', txt: 'PIE');
                            break;
                          case 7:
                            return cat(catImg: 'muffin', txt: 'MUFFIN');
                            break;
                          case 8:
                            return cat(catImg: 'spaguetti', txt: 'NOODLES');
                            break;
                          case 9:
                            return cat(catImg: 'soda', txt: 'DRINKS');
                            break;
                          case 10:
                            return cat(catImg: 'grid', txt: 'MORE');
                            break;
                        }
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 15,
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[400],
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 18,
            ),
            Container(
              width: double.infinity,
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  coloredCat('CAKE', Colors.pinkAccent, 74),
                  coloredCat('PIE', Colors.purple[400], 59),
                  coloredCat('ICE CREAM', Colors.blue[600], 115),
                  coloredCat('CANNOLI', Colors.cyan, 100),
                  coloredCat('SPECIALS', Colors.tealAccent[400], 105),
                  coloredCat('OFFERS', Colors.deepOrange[400], 95)
                ],
              ),
            ),
            SizedBox(
              height: 15,
              width: double.infinity,
            ),
            Row(
              children: [
                SizedBox(
                  height: 25,
                  width: 18,
                ),
                Text(
                  'Most Popular',
                  style: TextStyle(
                    fontSize: 23,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
              width: double.infinity,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 13,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.94,
                  child: ListView(
                    children: [
                      foodItems('dominos', 'Domino\'s Pizza', 'pizzzza',
                          'Pizza Margherita'),
                      foodItems('burgerking', 'Burger King', 'burrger',
                          'Whopper Burger'),
                      foodItems('starbucks', 'Starbucks', 'muffin',
                          'Blueberry Muffin'),
                      foodItems('baskins', 'Baskin Robbins', 'icrm',
                          'Baskin\'s Special'),
                      foodItems(
                          'ccd', 'Cafe Coffee Day', 'cofffee', 'Espresso'),
                      foodItems(
                          'keventers', 'Keventers', 'shake', 'Kit Kat Shake'),
                      foodItems('kfc', 'KFC', 'chicken', 'Chicken Wings'),
                      foodItems(
                          'mcd', 'McDonald\'s', 'maharaja', 'Mc Maharaja'),
                      foodItems('mod', 'Mad Over Donuts', 'donuts', 'Donuts'),
                      foodItems('pizzahut', 'Pizza Hut', 'pizzahutt',
                          'Pepperoni Pizza'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
