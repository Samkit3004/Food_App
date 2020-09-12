import 'package:flutter/material.dart';
import './appUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUP(),
    );
  }
}

class SignUP extends StatelessWidget {
  tField({String field, TextInputType ktype}) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          fillColor: Colors.grey[300],
          hintStyle: new TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          hintText: '$field',
        ),
        keyboardType: ktype,
      ),
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('lib/images/foodlogo.png'),
                ),
              ),
              Text(
                'Sign Up Free Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Column(
                children: [
                  tField(field: 'Username', ktype: TextInputType.text),
                  tField(field: 'Email', ktype: TextInputType.emailAddress),
                  tField(
                      field: 'Password', ktype: TextInputType.visiblePassword),
                  tField(field: 'Phone', ktype: TextInputType.phone),
                ],
              ),
              SizedBox(
                height: 50,
                width: 360,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.deepPurpleAccent[400],
                  textColor: Colors.white,
                  child: Text(
                    'Sign UP',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppUI(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
