import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  var email_cont = TextEditingController();
  var pass_cont = TextEditingController();
  var name_cont = TextEditingController();
  var _userType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  elevation: 0,
  backgroundColor: Colors.white,
  leading: GestureDetector(
      onTap: (){
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      child: Icon(Icons.arrow_back_sharp,color: Colors.black)),
),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.0,
                ),
                /////////name////////
                TextFormField(
                  controller: name_cont,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)
                    ),
                    border: OutlineInputBorder(),
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.teal),

                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ////////////////// Email/////////////
                TextFormField(
                  controller: email_cont,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)
                    ),
                    border: OutlineInputBorder(),
                    labelText: "EmailAddress",
                    labelStyle: TextStyle(color: Colors.teal),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ////////////////// pass ////////////////
                TextFormField(
                  controller: pass_cont,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: false,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.teal),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    suffix: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ///////////////////// option ///////////////////
                Text(
                  'Please select your user type:',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _userType = 'company';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.business,
                              size: 50.0,
                              color: _userType == 'company'
                                  ? Colors.teal[200]
                                  : Colors.grey,
                            ),
                            Text(
                              'Company',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: _userType == 'company'
                                    ? Colors.teal[200]
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _userType = 'employee';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 50.0,
                              color: _userType == 'employee'
                                  ? Colors.teal[200]
                                  : Colors.grey,
                            ),
                            Text(
                              'Employee',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: _userType == 'employee'
                                    ? Colors.teal[200]
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.0),

                ///////////////////////////
                Container(
                  width: double.infinity,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                    onPressed: () {
                      print(email_cont.text);
                      print(pass_cont.text);
                      print(name_cont.text);
                    },
                    child: Text(
                      "Register",

                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
