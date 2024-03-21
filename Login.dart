import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:test1/Screen_home.dart';
import 'package:test1/SignUp.dart';

class Login extends StatelessWidget {

  var email_cont=TextEditingController();
  var pass_cont=TextEditingController();
  //////////////////////////////////////////////////////////////
  bool Email_check( String s1){
    String e1="eslamsameh@gmail.com";
    return s1==e1;
  }
  bool pass_check( String s1) {
    String p1 = "1234";
    return s1 == p1;
  }
  ////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(

                "Login",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold ,

                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField( // دي اللي بيتعمل ال input زرار
                controller: email_cont,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted:( String value){
                  print(value);
                } ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email Address",
                  prefixIcon:Icon(
                    Icons.email,
                  ),
                ),

              ),
              SizedBox(
                height: 16.0,
              ),
           //////////////////
              TextFormField( // دي اللي بيتعمل ال inputbox
                controller: pass_cont,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true, // بتخلي الكلام اللي هتكتبه مخفي
                onFieldSubmitted:( String value){
                  print(value);
                } ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  prefixIcon:Icon(
                    Icons.lock,
                  ),
                  suffix: Icon(
                    Icons.remove_red_eye,
                  )
                ),

              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                color: Colors.indigo,
                width: double.infinity,
                child: MaterialButton(
                    onPressed: (){
                      //print(email_cont.text);
                      //print(pass_cont.text);
                      if(Email_check(email_cont.text )&& pass_check(pass_cont.text))
                        {
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder:(context)=> HomeScreen()),);
                        }
                      else
                        {
                         print("invalid email");
                        }
                    },
                  child:Text
                    (
                    "login",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),

                  ) ,

                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  Text(
                    "if you don't have account ?",
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=> Signup()),);
                      },
                      child: Text(
                       "SignUp",
                       style: TextStyle(
                         fontSize: 16.0,

                       ),
                      ),
                  ),
                ],
              )
            ],



          ),
              ),
        ),
      ),

    );

  }

}
