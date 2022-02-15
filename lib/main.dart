import 'package:flutter/material.dart';
import 'package:store/screens/Login_Screen.dart';
import 'package:store/screens/hello_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      initialRoute:Hello_Screen.scid ,

      routes: {
        Hello_Screen.scid:(context)=>Hello_Screen(),
        Login_Screen.scid:(context)=>Login_Screen(),
      },
    )
  );
}