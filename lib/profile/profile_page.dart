import 'package:flutter/material.dart';
import 'package:bagtsaher/main.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
bool turnOnNotification = false;
bool turnOnLocation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                    "Meniň Profilim",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),

                ),
                SizedBox(width: 55.0,),
                IconButton(
              icon: Icon(
                Icons.lock_outline,
                size: 35.0,
                color: Colors.blue[800],
              ),
             onPressed: ()
             {
               Navigator.push(context, MaterialPageRoute(builder: (context) => new SignInPage()));
             },
             ),
              ],
              
            ),

            
            SizedBox(height: 20.0,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(60.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        offset: Offset(
                          0, 4.0
                        ),
                        color: Colors.black38
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.person,
                    size: 80.0,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Admin Adminow",
                    style: TextStyle(fontSize: 16.0,
                    color: Colors.blue[800],fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10.0,),
                    Text("+99365241563",
                    style: TextStyle(color: Colors.lightBlue),),
                    SizedBox(height: 20.0,),
                    Container(
                        height: 25.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                             20.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Üýtgetmek",
                            style: TextStyle(color: Colors.blue,
                            fontSize: 16.0),
                          ),
                        ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0,),
            Text(
                      "Akkount",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                               leading: Icon(
                                 Icons.location_on,
                               ),
                               title: Text(
                                 "Geolokasiýa",
                               ),
                              //  contentPadding: EdgeInsets.all(0.0),
                            ),

                              Divider(height: 10.0, color: Colors.grey,),

                            ListTile(
                               leading: Icon(
                                 Icons.visibility,
                               ),
                               title: Text(
                                 "Paroly üýtget",
                               ),
                            ),

                            Divider(height: 10.0, color: Colors.grey,),
                            
                           
                          ],
                        ),
                        ),
                    ),

Text(
                      "Bildirişler",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
SizedBox(height: 20.0,),
                    Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Programma bildirişleri",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Switch(
                                  value: turnOnNotification,
                                   onChanged: (bool value){
                                      setState(() {
                                        turnOnNotification = value;
                                      });
                                   },
                                  ),
                              ],
                            ),
                             Divider(height: 10.0, color: Colors.grey,),
                            

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Ýerleşýän ýerini belle",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Switch(
                                  value: turnOnLocation,
                                   onChanged: (bool value){
                                      setState(() {
                                        turnOnLocation = value;
                                      });
                                   },
                                  ),
                              ],
                            ),
                          ],
                        ),
                        ),
                    ),
          ],
        ),
        ),
      ),
    );
  }
}