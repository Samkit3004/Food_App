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

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  bool autoValidate = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  tField(String field, TextInputType ktype, TextEditingController ctrller,
      bool obscT) {
    return Container(
      child: TextFormField(
        controller: ctrller,
        validator: (value) => value.isEmpty ? '*Required' : null,
        autovalidate: autoValidate,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
          ),
          hintText: '$field',
        ),
        keyboardType: ktype,
        obscureText: obscT,
      ),
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Image(
                image: AssetImage('lib/images/foodlogo.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Sign Up Free Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  tField('Username', TextInputType.text, usernameController,
                      false),
                  tField('Email', TextInputType.emailAddress, emailController,
                      false),
                  tField('Password', TextInputType.visiblePassword,
                      passwordController, true),
                  tField('Phone', TextInputType.phone, phoneController, false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: SizedBox(
                height: 50,
                width: 360,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.deepPurpleAccent[400],
                  textColor: Colors.white,
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 20, letterSpacing: 3),
                  ),
                  onPressed: () {
                    if (usernameController.text.isEmpty) {
                      setState(() {
                        autoValidate = true;
                      });
                      return;
                    }
                    if (emailController.text.isEmpty) {
                      setState(() {
                        autoValidate = true;
                      });
                      return;
                    }
                    if (passwordController.text.isEmpty) {
                      setState(() {
                        autoValidate = true;
                      });
                      return;
                    }
                    if (phoneController.text.isEmpty) {
                      setState(() {
                        autoValidate = true;
                      });
                      return;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppUI(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
