import 'package:flutter/material.dart';
import 'package:test1/Login.dart';
import 'package:test1/Screen_home.dart';
import 'package:test1/SignUp.dart';



void main() {
  runApp( MyApp());
}



class MyApp extends StatelessWidget{
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  //return MaterialApp( home: Text ('hello world'),);
  return MaterialApp(
   home:Login(),
    //home: Signup(),
   debugShowCheckedModeBanner:false,

 );


}

}