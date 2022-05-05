import 'package:bagtsaher/accounts/accounts.dart';
import 'package:bagtsaher/meeting/create.dart';
import 'package:bagtsaher/documents/documents.dart';
import 'package:bagtsaher/sdelka/sdelka.dart';
import 'package:flutter/material.dart';
import 'package:bagtsaher/main.dart';
import 'package:bagtsaher/contacts/contacts.dart';
import 'package:bagtsaher/profile/profile_page.dart';
import 'package:bagtsaher/clients/clients.dart';
import 'package:bagtsaher/meeting/meeting.dart';
import 'package:bagtsaher/login/sign_in.dart';
import 'package:bagtsaher/calls/calls.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
    elevation: 0.1,
     title: InkWell(
       onTap: (){
        //  Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePageApp()));
       },
            child: Text(
         "Meniň Kalendarym",
       ),
     ),
     centerTitle: true,
     
     actions: <Widget>[
       new IconButton(
        icon: Icon(
        Icons.search,
        color: Colors.white,
         ),
        onPressed: (){},
       ),

       new IconButton(
         icon: Icon(
           Icons.notifications_none,
         color: Colors.white,
         ),
         onPressed: (){
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
         },
       ),

        new IconButton(
         icon: Icon(
           Icons.add,
         color: Colors.white,
         ),
         onPressed: (){
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
         },
       ),
       
     ],
      ),
      
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text(
                  "Admin Adminow",
                ), accountEmail: Text(
              "adminadminow@gmail.com",
            ),
              currentAccountPicture: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new ProfilePage()));
                },
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue[800],
                    size: 65.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),

            InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new MyHomePage()));
              },
              child: ListTile(
                title: Text('Baş sahypa',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.home,
                 color: Colors.blue,
                ),
              ),
            ),


            InkWell(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => new Settings()));
              },
              child: ListTile(
                title: Text(
                  'KontrAgentlar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.person,
                 color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Kontakt()));
              },
              child: ListTile(
                title: Text(
                  'Kontaktlar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.contact_phone,
                 color: Colors.blue,
                ),
              ),
            ),


             InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Candidat()));
              },
              child: ListTile(
                title: Text(
                  'Dokumentler',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.supervisor_account,
                 color: Colors.blue,
                ),
              ),
            ),


            InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Sdelka()));
              },
              child: ListTile(
                title: Text(
                  'Sdelkalar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.playlist_play,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Clients()));
              },
              child: ListTile(
                title: Text(
                  'Müşderiler',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => new Calendar()));
              },
              child: ListTile(
                title: Text(
                  'Kalendar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => new Meeting()));
              },
              child: ListTile(
                title: Text(
                  'Duşuşyklar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.view_list,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => new Calls()));
              },
              child: ListTile(
                title: Text(
                  'Jaňlar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: (){

              },
              child: ListTile(
                title: Text(
                  'Ýumuşlar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.blue,
                ),
              ),
            ),

            // InkWell(
            //   onTap: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context) => new SignInPage()));
            //   },
            //   child: ListTile(
            //     title: Text(
            //       'Login',
            //       style: TextStyle(
            //         color: Colors.blue,
            //         fontSize: 18.0,
            //       ),
            //     ),
            //     leading: Icon(
            //       Icons.lock,
            //       color: Colors.blue,
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
     
   body: Container(
     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
     child: Column(
       children: <Widget>[
         Text(
           "Kalendar Planlar",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue[800],
            fontWeight: FontWeight.w900,
          ),
         ),
         GestureDetector(
           onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => new CreateCalendar()));
           },
                    child: Container(
             margin: EdgeInsets.symmetric(vertical: 10.0),
             width: MediaQuery.of(context).size.width,
             height: 210.0,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(10.0),
               boxShadow: [
                 BoxShadow(
                   blurRadius: 5.0,
                   offset: Offset(0, 3),
                   color: Colors.black38,
                 ),
               ],
             ),
             child: Row(
               children: <Widget>[
                 Container(
                    margin: EdgeInsets.only(bottom: 50.0),
                   width: 80.0,
                   height: 80.0,
                  
                                      child: IconButton(
                       onPressed: (){},
                       icon: Icon(
                         Icons.event_note,
                         size: 120.0,
                         color: Colors.blue[800],
                       ),
                     ),
                   
                 ),
                 
                 SizedBox(width: 65.0,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     
                     Text(
                       "Bildiriş!",
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                         color: Colors.blue[800],
                       ),
                     ),
                     SizedBox(height: 15.0,),
                     Text(
                       "Gündelik bellenen işler",
                       style: TextStyle(
                             color: Colors.blue[800],
                             fontSize: 15.0,
                             fontWeight: FontWeight.bold,
                           ),
                     ),

                     Row(
                       children: <Widget>[
                         Text(
                           "20.06.2021",
                           style: TextStyle(
                             color: Colors.blue[800],
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                        // IconButton(
                        //   onPressed: (){},
                        //   icon: Icon(
                        //     Icons.add_to_home_screen,
                        //   ),
                        //   iconSize: 50.0,
                        //   color: Colors.blue[800],
                        // ),
                        // Text(
                        //   "Giňişleýin",
                        //   style: TextStyle(
                        //      color: Colors.blue[800],
                        //      fontSize: 15.0,
                        //      fontWeight: FontWeight.bold,
                        //    ),
                        // ),
                       ],
                     ),
                     IconButton(
                          onPressed: (){

                          },
                          icon: Icon(
                            Icons.add_to_home_screen,
                          ),
                          iconSize: 50.0,
                          color: Colors.blue[800],
                        ),
                        Text(
                          "Giňişleýin",
                          style: TextStyle(
                             color: Colors.blue[800],
                             fontSize: 15.0,
                             fontWeight: FontWeight.bold,
                           ),
                        ),

                   ],
                 )
               ],
             ),
           ),
         ),
       ],
     ),
   ),

      
    );
  }
}


