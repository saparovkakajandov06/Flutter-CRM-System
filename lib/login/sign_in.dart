import 'package:bagtsaher/documents/documents.dart';
import 'package:bagtsaher/contacts/contacts.dart';
import 'package:bagtsaher/accounts/accounts.dart';
import 'package:bagtsaher/sdelka/sdelka.dart';
import 'package:flutter/material.dart';
import 'package:bagtsaher/main.dart';
import 'package:bagtsaher/profile/profile_page.dart';
import 'package:bagtsaher/clients/clients.dart';
import 'package:bagtsaher/calendar/calendar.dart';
import 'package:bagtsaher/meeting/meeting.dart';
import 'package:bagtsaher/calls/calls.dart';
import 'package:bagtsaher/yumus/yumus.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text(
          "Bagtsaher"
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[200],
       actions: <Widget>[

         new IconButton(
    icon: Icon(
      Icons.search
    ),
    color: Colors.white,
     onPressed: (){

     },
     ),

 new IconButton(
    icon: Icon(
      Icons.notifications_none,
    ),
    color: Colors.white,
     onPressed: (){

     },
     ),

         new IconButton(
           icon: Icon(Icons.add),
           color: Colors.white, 
           onPressed: (){

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


          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200.0,
                  child: Icon(
                    Icons.business,
                    size: 200.0,
                    color: Colors.white,
                  ),
                  
                  color: Colors.blue[800],
                ),
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.white.withOpacity(1),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange[100].withOpacity(0.3),
                          offset: Offset(0.0, -10.0),
                          blurRadius: 8.0,  
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0, ),
                          child: Row(
                            children: <Widget>[
                              Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Baş sahypa",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[800],
                                      ), 
                                    ),
                                    
                                  ],
                              ),
                              SizedBox(width: 105.0,),
                              IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  size: 38.0,
                                  color: Colors.grey[800],
                                ),
                                 onPressed: null,
                                 )
                            ],
                          ),
                          ),
                          SizedBox(height: 10.0,),
                          SingleChildScrollView(
                                                      child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.call,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(
                                        child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Gepleşikler',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Satylýan obýekt üçin",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),


                                  // 2

                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.wifi,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Internetde',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Sosial torlarda bildirişler",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),


                                  // 3

                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.email,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'SMS, MMS',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "SMS, MMS we Bildirişler",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),

                                  // 4 
                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.list,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Iş üstünde',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Ýüzbe-Ýüz hyzmatdaşlyk",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),
                                  
                                  //5
                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.attach_money,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Hasaplaşyk',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Bahalary kesgitlenen emläkler",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),
                                  // 6

                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.kitchen,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Ýer',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Beýleki emläkler",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),

                                  //7 

                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.question_answer,
                                          color: Colors.blue[800],
                                         size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Maslahatlar',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Has Köp Soralýan Soraglar",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),

                                  // 8
                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.payment,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                     SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Şertnama',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Ylalaşyk dowam edýär. . .",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),
                                  

                                  // 9

                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30.0),

                                        child: Icon(
                                          Icons.create_new_folder,
                                          color: Colors.blue[800],
                                          size: 50.0,
                                        ),
                                      ),
                                      SizedBox(width: 45.0,),
                                      Expanded(child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Täze',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text(
                                            "Soňky ýüklenen obýektler",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.blue[800],

                                            ),
                                          )
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),

                                 

                                  
                                ],
                              ) ,
                              ),
                          ),
                      ],
                    ),
                  ),
                  ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

