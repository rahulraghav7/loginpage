import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login page',
      theme: ThemeData.light(),
      home: Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 40, bottom: 60),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 5),
                child: Text(
                  'Lets get',
                  style: TextStyle(color: Colors.grey[600], fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 50),
                child: Text(
                  'you on board',
                  style: TextStyle(color: Colors.grey[600], fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 30, bottom: 20),
                      child: MaterialButton(
                        onPressed: () {
                         
                        },
                        height: 45,
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.blue[300],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 53.0,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'or',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 53.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15,right: 15),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                      ),
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/google.png',height: 30,width: 30,),
                          Text('    G o o g l e',style: TextStyle(color:Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top:15),
                     child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                      ),
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/facebook.png',height: 30,width: 30,),
                          Text('    F a c e b o o k',style: TextStyle(color:Colors.grey),)
                        ],
                      ),
                  ),
                   ),

                 
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:50,),
                child: Center(
                  child: RichText(text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Already have an account ?',style: TextStyle(color: Colors.grey,fontSize: 15)),
                      TextSpan(text:' Sign In',style: TextStyle(color:Colors.blue,fontSize: 15),  recognizer: new TapGestureRecognizer()
                      ..onTap = () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginScreen();
                        }));
                    },
                      ),
                      ]

                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
