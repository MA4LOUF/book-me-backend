// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';



ThemeData theme(){
  return ThemeData(
    primaryColor: Color.fromARGB(255, 51, 54, 51),
    primaryColorDark: Color.fromARGB(255, 158, 174, 219),
    primaryColorLight: Color.fromARGB(255, 98, 190, 106),

    scaffoldBackgroundColor: Colors.white,
    backgroundColor: const Color(0xFFF5F5F5),
    

    textTheme: const TextTheme(
      headline1: TextStyle (fontSize: 55, fontWeight: FontWeight.bold, fontFamily: 'Raleway'), 
      headline2: TextStyle( fontSize: 12, fontWeight: FontWeight.bold),
      headline3: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 7, fontWeight: FontWeight.bold,),
      headline5: TextStyle(fontSize: 6, fontWeight: FontWeight.normal),
      bodyText1: TextStyle(fontSize: 4, fontWeight: FontWeight.normal),
      ), 
      
  );
}