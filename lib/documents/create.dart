import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bagtsaher/documents/documents.dart';
import 'package:bagtsaher/accounts/button.dart';
import 'package:flutter/services.dart';


class CreateCandidat extends StatefulWidget {

  CreateCandidat({Key key}) : super(key: key);
  @override
  _CreateCandidatState createState() => _CreateCandidatState();
}

class _CreateCandidatState extends State<CreateCandidat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 1.0,
  title: Text(
    "Dokument Döretmek",
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
                
               _buildTextFormField("Ady"),
               _buildTextFormField("Papkasy"),
               _buildTextFormField("Planlaşdyrylan görnüşi"),
               _buildTextFormField("Bellenen Senesi"),
               _buildTextFormField("Status"),
              _buildTextFormField("Gutarmaly Senesi"),
              _buildTextFormField("Kim girizdi...?"),
               _buildTextFormField("Degişli topary"),
               _buildTextFormField("Mazmuny", maxLine: 2),

               _buildTextFormField("Faýl"),

             SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Candidat()));
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
                   keyboardType: hint == "Telefon belgisi" || hint == "Indeksi"  || hint == "Işiň bahasy (nyrhy TMT)"  ? TextInputType.number : TextInputType.text,
  );
}