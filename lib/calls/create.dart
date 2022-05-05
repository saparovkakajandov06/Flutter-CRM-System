import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bagtsaher/accounts/button.dart';
import 'package:bagtsaher/calls/calls.dart';
import 'package:flutter/services.dart';


class CreateCall extends StatefulWidget {
  @override
  _CreateCallState createState() => _CreateCallState();
}

class _CreateCallState extends State<CreateCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 1.0,
  title: Text(
    "Gepleşikleri belläň",
  ),
),



      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height + 200.0,
          child: Form(
            child: Column(
              children: <Widget>[
              
               _buildTextFormField("Ady"),
               _buildTextFormField("Haýsydygyny saýla"),
               _buildTextFormField("Planlaşdyrma statusy"),
               _buildTextFormField("Jaňyň ugry"),
              _buildTextFormField("Başlanýan Sene"),
              _buildTextFormField("Başlanýan Wagty"),
              _buildTextFormField("Gutarýan Sene"),
              _buildTextFormField("Gutarýan Wagty"),
              _buildTextFormField("Dowamlylygy"),
              _buildTextFormField("Elektron adresine habar berilmeli wagty"),
               _buildTextFormField("Kim döretdi. . .?"),
               _buildTextFormField("Degişli topary"),
               _buildTextFormField("Mazmuny", maxLine: 2),
              
             SizedBox(height: 10.0,),
             
              Text(
                "Gatnaşyjylary Bellige Al",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              _buildTextFormField("Ulanyjylary saýla"),
              _buildTextFormField("Kontaktlary saýla"),
              _buildTextFormField("Müşderileri saýla"),
               

             SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Calls()));
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
                   keyboardType: hint == "Başlanýan Sene" || hint == "Başlanýan Wagty" || hint == "Gutarýan Sene" || hint == "Gutarýan Wagty" || hint == "Dowamlylygy" || hint == "Elektron adresine habar berilmeli wagty" ? TextInputType.number : TextInputType.text,
  );
}