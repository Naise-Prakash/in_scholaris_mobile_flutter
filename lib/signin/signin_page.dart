import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
              height: 300,
              width: 500,
              alignment: Alignment.bottomLeft,
              padding: new EdgeInsets.only(left: 8.0, bottom: 8.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Login-img.png'),
                      fit: BoxFit.cover)),
              child: new Stack(
                children: <Widget>[
                  new Positioned(
                    bottom: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text('\n to InScholaris ',
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.person_outline),
                    color: Colors.black,
                    onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Username"),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.lock_outline),
                    color: Colors.black,
                    onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFF462769),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'SignUp');
            },
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: ' SIGN UP',
                        style: TextStyle(
                            color: Color(0xFF462769),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
