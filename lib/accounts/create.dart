import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bagtsaher/accounts/accounts.dart';
import 'package:bagtsaher/accounts/button.dart';
import 'package:flutter/services.dart';


class CreateAccount extends StatefulWidget {

  CreateAccount({Key key}) : super(key: key);
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 1.0,
  title: Text(
    "Kontragent Döretmek",
  ),
  centerTitle: true,
),



      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height + 350.0,
          child: Form(
            child: Column(
              children: <Widget>[
                
              
               _buildTextFormField("Doly Ady"),
               _buildTextFormField("Web saýt salgylanmasy"),
               _buildTextFormField("Elektron poçtasy"),
               _buildTextFormField("Telefon belgisi"),

               _buildTextFormField("Iberiji Indeksi"),
               _buildTextFormField("Iberiji Ýurt"),
               _buildTextFormField("Iberiji Welaýat"),
               _buildTextFormField("Iberiji Şäheri"),
               _buildTextFormField("Iberiji Köçe"),


               _buildTextFormField("Poçtaň Indeksi"),
               _buildTextFormField("Poçtaň Ýurdy"),
               _buildTextFormField("Poçtaň Welaýaty"),
               _buildTextFormField("Poçtaň Şäheri"),
               _buildTextFormField("Poçtaň Köçesi"),

SizedBox(height: 10.0,),
Text(
  
                "Degişli edilen meýdançalary saýlaň",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),

               _buildTextFormField("Hyzmatdaşlyk görnüşi"),
               _buildTextFormField("Iş ýöredijiligi"),

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Settings()));
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
                   keyboardType: hint == "Telefon belgisi" || hint == "Iberiji Indeksi"  || hint == "Poçtaň Indeksi"  ? TextInputType.number : TextInputType.text,
  );
}