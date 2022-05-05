import 'package:bagtsaher/sdelka/create.dart';
import 'package:flutter/material.dart';
import 'package:bagtsaher/sdelka/sdelka.dart';

class Sdelka_Plugin extends StatefulWidget {
  @override
  _Sdelka_PluginState createState() => _Sdelka_PluginState();
}

class _Sdelka_PluginState extends State<Sdelka_Plugin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
            child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new SdelkaCreate()));
              },
                          child: Container(     
                height: 200,
                width: 340,
                child: Icon(
                  Icons.local_atm,
                  size: 175.0,
                  color: Colors.blue[800],

                ),
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                height: 40.0,
                width: 350.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:  [
                      Colors.black12, Colors.black12
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ), 
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Garaşylýar. . .",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[800],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.list,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.list,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.list,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.list,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.list,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "(22 Iş kagyzy)",
                            style: TextStyle(
                              color: Colors.black,
                              
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  Column(
                    children: <Widget>[
                      Text(
                        "22.0",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                           fontSize: 18.0,
                         ),
                      ),
                      Text(
                        "Resminama",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}



class Sdelka_Plugin2 extends StatefulWidget {
  @override
  _Sdelka_Plugin2State createState() => _Sdelka_Plugin2State();
}

class _Sdelka_Plugin2State extends State<Sdelka_Plugin2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
            child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new SdelkaCreate()));
              },
                          child: Container(
                height: 200,
                width: 340,
                child: Icon(
                  Icons.account_balance,
                  size: 150.0,
                  color: Colors.blue[800],
                  

                ),
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                height: 40.0,
                width: 350.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:  [
                      Colors.black12, Colors.black12
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ), 
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Bahalandyrylan. . .",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[800],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.monetization_on,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.indigo[800],
                            size: 16.0,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "(8 şertnama)",
                            style: TextStyle(
                              color: Colors.black,
                              
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  Column(
                    children: <Widget>[
                      Text(
                        "8.0",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                           fontSize: 18.0,
                         ),
                      ),
                      Text(
                        "Möhletli",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}

