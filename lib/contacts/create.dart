import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bagtsaher/contacts/contacts.dart';
import 'package:bagtsaher/accounts/button.dart';
import 'package:flutter/services.dart';

class CreateContact extends StatefulWidget {
  
  CreateContact({Key key}) : super(key: key);
  @override
  _CreateContactState createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 1.0,
  title: Text(
    "Kontakt Döretmek",
  ),
  centerTitle: true,
),



      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height + 80.0,
          child: Form(
            child: Column(
              children: <Widget>[
                
               _buildTextFormField("Status"),
               _buildTextFormField("Ady"),
               _buildTextFormField("Familiýasy"),
               _buildTextFormField("Elektron poçtasy"),
               _buildTextFormField("Telefon belgisi"),
               _buildTextFormField("Iberiji Indeksi"),
               _buildTextFormField("Iberiji Ýurt"),
               _buildTextFormField("Iberiji Welaýat"),
               _buildTextFormField("Iberiji Şäheri"),
               _buildTextFormField("Iberiji Köçe"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Kontakt()));
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
                   keyboardType: hint == "Telefon belgisi" || hint == "Indeksi" ? TextInputType.number : TextInputType.text,
  );
}