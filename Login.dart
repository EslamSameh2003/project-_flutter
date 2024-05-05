import 'dart:ffi';
import 'package:flutter/material.dart';
import 'EmployeeProfile.dart';
import 'SignUp.dart';
import 'comp_home.dart';
import 'empoloyee_home.dart';


class Login extends StatelessWidget {

  var email_cont1=TextEditingController();
  var pass_cont1=TextEditingController();

  var email_cont2=TextEditingController();
  var pass_cont2=TextEditingController();
  //////////////////////////////////////////////////////////////
  bool Email_check( String s1){
    String e1="eslam";
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
                controller: email_cont1,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted:( String value){
                  print(value);
                } ,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal, width: 2.0),
                    // borderRadius: BorderRadius.circular(10.0),
                  ),
                  border:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.teal),
                  ),

                  labelText: "Email Address",
                  labelStyle: TextStyle(color: Colors.teal),
                  prefixIcon:Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),

              ),
              SizedBox(
                height: 16.0,
              ),
           //////////////////
              TextFormField( // دي اللي بيتعمل ال inputbox
                controller: pass_cont1 ,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true, // بتخلي الكلام اللي هتكتبه مخفي
                onFieldSubmitted:( String value){
                  print(value);
                } ,
                decoration: InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ) ,

                  border: OutlineInputBorder(),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.teal),
                  prefixIcon:Icon(
                    color:Colors.grey ,
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
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(
                    onPressed: (){
                      //print(email_cont.text);
                      //print(pass_cont.text);
                      if(Email_check(email_cont1.text )&& pass_check(pass_cont1.text))
                        {
                      Navigator.pushReplacement(
                          context,
                        MaterialPageRoute(builder:(context)=> EmployeeHome()),);
                        }
                      else
                        {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder:(context)=> CompHome()),);
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
                         color: Colors.teal,
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
