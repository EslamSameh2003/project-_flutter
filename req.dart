// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Req extends StatelessWidget {
  final icon;
  final String name;
  final String job;
  final String brief;
  const Req({
    Key? key,
    required this.icon,
    required this.job,
    required this.brief,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      icon,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      job,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext) {
                    return Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: MediaQuery.of(context).size.height*0.45,
                      padding: EdgeInsets.all(20.0),

                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                      )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              name,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              brief,
                              style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed:(){
                                       Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                       child: Text('Reject',style: TextStyle(color: Colors.black),)
                                      ),
                                  ),
                                  SizedBox(width: 7,),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed:(){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                        ),
                                         child: Text('Accept',style: TextStyle(color: Colors.white),)),
                                    )
                                ],
                              )
                        ],
                      ),
                    );
                  },
                );


              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.person,),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
