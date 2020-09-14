import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppUI extends StatelessWidget {
  cat({String catImg, String txt}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      height: 36,
      width: wth,
      child: FlatButton(
        onPressed: () {},
        child: Text(
          '$item',
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 2,
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
                    height: 18,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                coloredCat('CAKE', Colors.pinkAccent, 72),
                coloredCat('PIE', Colors.purple[700], 57),
                coloredCat('ICE CREAM', Colors.blue[900], 115),
                coloredCat('CANNOLI', Colors.cyan, 98),
              ],
            ),
            SizedBox(
              height: 18,
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
                    fontSize: 28,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
              width: double.infinity,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                Column(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 40.0,
                                child: Image.asset(
                                  'lib/image/dominos.png',
                                  height: 40,
                                ),
                              ),
                              Text(
                                'Domino\'s Pizza',
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 70,
                              ),
                              FaIcon(
                                FontAwesomeIcons.solidHeart,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 20,
                                width: 8,
                              ),
                              Text('160'),
                              SizedBox(
                                height: 20,
                                width: 9,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
