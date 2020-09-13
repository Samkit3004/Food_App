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
                            return cat(catImg: 'pizza', txt: 'Pizza');
                            break;
                          case 1:
                            return cat(catImg: 'hamburger', txt: 'Burger');
                            break;
                          case 2:
                            return cat(catImg: 'sandwich', txt: 'Sandwich');
                            break;
                          case 3:
                            return cat(catImg: 'bread', txt: 'Breads');
                            break;
                          case 4:
                            return cat(catImg: 'coffee', txt: 'Coffee');
                            break;
                          case 5:
                            return cat(catImg: 'hot-dog', txt: 'Hot Dog');
                            break;
                          case 6:
                            return cat(catImg: 'pie', txt: 'Pie');
                            break;
                          case 7:
                            return cat(catImg: 'muffin', txt: 'Muffin');
                            break;
                          case 8:
                            return cat(catImg: 'spaguetti', txt: 'Noodles');
                            break;
                          case 9:
                            return cat(catImg: 'soda', txt: 'Drinks');
                            break;
                          case 10:
                            return cat(catImg: 'grid', txt: 'More');
                            break;
                        }
                      },
                      scrollDirection: Axis.horizontal,
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
//  Row(children: [

//                           ,
//                           ,
//                           ,
//                           ,
//                           ,
//                           ,
//                           ,
//                           ,
//                           ,
//
//                         ]);
