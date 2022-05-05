import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bagtsaher/accounts/button.dart';
import 'package:bagtsaher/plugin/sdelka_plugin.dart';
import 'package:flutter/services.dart';


class SdelkaCreate extends StatefulWidget {

  SdelkaCreate({Key key}) : super(key: key);
  @override
  _SdelkaCreateState createState() => _SdelkaCreateState();
}

class _SdelkaCreateState extends State<SdelkaCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 1.0,
  title: Text(
    "Sdelka Döretmek",
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

               _buildTextFormField("Kim döretdi. . .?"),
               _buildTextFormField("Degişli topary"),
               _buildTextFormField("Mazmuny", maxLine: 2),

             SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Sdelka_Plugin()));
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
                   keyboardType: hint == "Işiň bahasy (nyrhy TMT)" || hint == "Mümkinçiligi" ? TextInputType.number : TextInputType.text,
  );
}