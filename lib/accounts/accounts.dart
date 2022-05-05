import 'package:bagtsaher/accounts/create.dart';
import 'package:bagtsaher/documents/documents.dart';
import 'package:bagtsaher/contacts/contacts.dart';
import 'package:bagtsaher/sdelka/sdelka.dart';
import 'package:flutter/material.dart';
import 'package:bagtsaher/main.dart';
import 'package:bagtsaher/profile/profile_page.dart';
import 'package:bagtsaher/clients/clients.dart';
import 'package:bagtsaher/calendar/calendar.dart';
import 'package:bagtsaher/meeting/meeting.dart';
import 'package:bagtsaher/login/sign_in.dart';
import 'package:bagtsaher/calls/calls.dart';
import 'package:bagtsaher/yumus/yumus.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

var product_list = [
    {
      "name": "3 komnatly ipoteka",
      // "picture": "assets/images/banan.png",
      "old_price": 10,
      "price": 9,
    },
     {
      "name": "Plan jaý",
      // "picture": "assets/images/apelsin.jpg",
      "old_price": 12,
      "price": 10,
    },
    
  ];


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
         "KontrAgentlar",
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
Navigator.push(context, MaterialPageRoute(builder: (context) => new Yumus()));
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
      
    
       body: Card(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context,index){
          var listTile = ListTile(
                leading: Icon(Icons.account_circle,
                color: Colors.blue[800],
                size: 40.0,
                ),
                title: Text(
                  // _contacts[index].name.toUpperCase(),
                  "Meret Aşyrow",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  // _contacts[index].mobile,
                  "+99365452145"
                  ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  onPressed: (){},
                ),

                // onTap: (){
                //   setState(() {
                //     _contact = _contacts[index];
                //     _ctrlName.text = _contacts[index].name;
                //     _ctrlMobile.text = _contacts[index].mobile;
                //   });
                // },

                onTap: (){},

              );
          return Column(
            children: <Widget>[
              listTile,
              Divider(
                height: 5.0,
              ),
            ],
          );
          },
        // itemCount: _contacts.length,
      ),
    ),
    floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,
        size: 30 ,),
        // onPressed: (){
        //   Navigator.of(context).push(MaterialPageRoute(
        //     builder: (ctx)=> AddMainScreen(),
        //   ));
        // },
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => new CreateAccount()));
        },
      ),

    );
  }
}

