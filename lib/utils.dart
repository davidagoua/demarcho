import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget createTF({
  TextEditingController ctrl,
  bool obscure = false,
  String hintText,
  IconData icon,
  bool required=true,
  TextInputType textType,
}){

  return Padding(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      validator: (value){
        if(value.isEmpty && required){
          return "Ce champ est obligatoire";
        }
        return null;
      },
      controller: ctrl,
      obscureText: obscure,
      keyboardType: textType ?? TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: Icon(icon) ?? null,
      )
    ),
  );
}