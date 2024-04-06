import 'package:flutter/material.dart';
import 'package:test1/Login.dart';
import 'package:test1/Screen_home.dart';
import 'package:test1/SignUp.dart';
import 'package:test1/EmployeeProfile.dart';

//stl
//ctrl+ space show functions
// ctrl+ click lift details about widget
// Alt+enter wrap
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  //return MaterialApp( home: Text ('hello world'),);
  return MaterialApp(
    //home: Signup(),
    home:Login(),
   // home: EmployeeProfile(),
   debugShowCheckedModeBanner:false,

 );


}

}