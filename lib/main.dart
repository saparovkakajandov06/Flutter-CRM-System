 import 'package:bagtsaher/contacts/contacts.dart';
import 'package:bagtsaher/profile/profile_page.dart';
import 'package:bagtsaher/sdelka/sdelka.dart';
import 'package:flutter/material.dart';
import 'package:bagtsaher/accounts/accounts.dart';
import 'package:bagtsaher/clients/clients.dart';
import 'package:bagtsaher/calendar/calendar.dart';
import 'package:bagtsaher/meeting/meeting.dart';
import 'package:bagtsaher/login/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BagtSaher',
      home: SignInPage(),
    );
  }
}


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _toggleVisibility = true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Sizin E-mailiňizi ýa-da ulanyjy adyňyz. . .",
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }


  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Parolyňyzy ýazyň. . .",
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                
Container(),

SizedBox(height: 50.0,),

              Icon(
                Icons.screen_lock_portrait,
                size: 160.0,
                color: Colors.blue[800],
              ),
              Text(
                "Ulgama Gir",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Paroly ýatdan çykardyňyzmy?",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0,),
              Card(
                // elevation: 1.0,
                child: Padding(padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextField(),
                  ],
                ),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                height: 50.0,
                decoration: BoxDecoration( 
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new MyHomePage()));
                    },
                                      child: Text(
                    "Ulgama Gir",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                ),
                  ),
                ),
                
              ),
              Divider(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sizde Akkount Ýokmy?",
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    "Registrasiýa",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



