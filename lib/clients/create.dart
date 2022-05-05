import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bagtsaher/accounts/button.dart';
import 'package:bagtsaher/clients/clients.dart';
import 'package:flutter/services.dart';


class CreateClient extends StatefulWidget {
  @override
  _CreateClientState createState() => _CreateClientState();
}

class _CreateClientState extends State<CreateClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 1.0,
  title: Text(
    "Müşderi Döretmek",
  ),
  centerTitle: true,
),



      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height + 0.0,
          child: Form(
            child: Column(
              children: <Widget>[
              
               _buildTextFormField("Ady"),
               _buildTextFormField("KontrAgentlilik zwenosy"),
               _buildTextFormField("Sdelka stadiýasy"),
              _buildTextFormField("Işiň bahasy (nyrhy TMT)"),
              _buildTextFormField("Mümkinçiligi"),
              _buildTextFormField("Tamamlanýan Senesi"),
               _buildTextFormField("Kontakt"),
                _buildTextFormField("Başlangyç istoçnik"),

                SizedBox(height: 10.0,),
               Text(
                "Gatnaşyjylary Bellige Al",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),

               _buildTextFormField("Kim döretdi. . .?"),
               _buildTextFormField("Degişli topary"),
               _buildTextFormField("Mazmuny", maxLine: 2),

             SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Clients()));
                },
                child: Button(btnText: "Giriz",
                ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}


Widget _buildTextFormField(String hint, {int maxLine = 1}){
  return TextFormField(
decoration: InputDecoration(
                     hintText: "$hint",
                     hintStyle: TextStyle(
                       color: Colors.blueAccent,
                     ),
                   ),
                   maxLines: maxLine,
                   keyboardType: hint == "Işiň bahasy (nyrhy TMT)" || hint == "Mümkinçiligi" || hint == "Tamamlanýan Senesi" ? TextInputType.number : TextInputType.text,
  );
}