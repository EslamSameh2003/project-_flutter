import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      appBar: AppBar(),
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
                    border: OutlineInputBorder(),
                    labelText: "User Name",
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
                    border: OutlineInputBorder(),
                    labelText: "EmailAddress",
                    prefixIcon: Icon(
                      Icons.email_outlined,
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
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
                                  ? Colors.deepPurple[200]
                                  : Colors.grey,
                            ),
                            Text(
                              'Company',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: _userType == 'company'
                                    ? Colors.deepPurple[200]
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
                                  ? Colors.deepPurple[200]
                                  : Colors.grey,
                            ),
                            Text(
                              'Employee',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: _userType == 'employee'
                                    ? Colors.deepPurple[200]
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
                 // color: Colors.indigo,
                  width: double.infinity,

                  child: ElevatedButton(
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
