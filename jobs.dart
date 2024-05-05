// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'empoloyee_home.dart';


class Jobs extends StatelessWidget {
  final icon;
  final String job;
  final String CName;
  final String details;
  const Jobs({
    Key? key,
    required this.icon,
    required this.job,
    required this.CName,
    required this.details,
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
                      CName,
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
                // showModalBottomSheet(
                //   context: context,
                //   builder: (BuildContext) {
                //     return Container(
                //       width: MediaQuery.of(context).size.width - 40,
                //       height: MediaQuery.of(context).size.height*0.45,
                //       padding: EdgeInsets.all(20.0),
                //
                //       decoration: BoxDecoration(color: Colors.white,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(20.0),
                //         topRight: Radius.circular(20.0)
                //       )),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(job,
                //               style: TextStyle(
                //                   fontSize: 24, fontWeight: FontWeight.bold)),
                //           SizedBox(height: 10),
                //           Text(
                //               details,
                //               style: TextStyle(fontSize: 18)),
                //               Spacer(),
                //               Row(
                //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                 children: [
                //                   Expanded(
                //                     child: ElevatedButton(
                //                       onPressed:(){
                //                        Navigator.pop(context);
                //                       },
                //                       style: ElevatedButton.styleFrom(
                //                         backgroundColor: Colors.white,
                //                       ),
                //                        child: Text('Cancel',style: TextStyle(color: Colors.black),)
                //                       ),
                //                   ),
                //                   SizedBox(width: 7,),
                //                     Expanded(
                //                       child: ElevatedButton(
                //                         onPressed:(){},
                //                         style: ElevatedButton.styleFrom(
                //                           backgroundColor: Colors.blue,
                //                         ),
                //                          child: Text('Apply',style: TextStyle(color: Colors.white),)),
                //                     )
                //                 ],
                //               )
                //         ],
                //       ),
                //     );
                //   },
                // );
                // omar viewontap
                showModalBottomSheet(
                  context: context,
                  builder: ( BuildContext Context){
                    return Column(
                      children: [

                        Container(
                            height: 135,
                            width: 300,
                            alignment: Alignment.topCenter,
                            margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                            padding:  const EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color:Colors.teal.withOpacity(.1) ),
                            child: const Column(
                              children: [
                                Text("Job Details ",style: TextStyle(color: Colors.black,fontSize: 20),),
                                // details that come from requirements
                                SizedBox(height: 40,),
                                Text("details that come from requirements "),

                              ],
                            )),



                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                          padding:  const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color:Colors.teal.withOpacity(.1) ),
                          child:  Row(
                              children: [
                                const Expanded(child: Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text("Choose Cv",style: TextStyle(color: Colors.black,fontSize: 25),),
                                )),
                                Expanded(child: GestureDetector(
                                    onTap: (){
                                      // go to choose Cv from Storage Cv
                                    },
                                    child: const Icon( Icons.upload,size: 25,)))
                              ]
                          ) ,),

                        SizedBox(height: 50,
                          child: Center(child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 110),
                              backgroundColor: Colors.teal.withOpacity(.8),),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EmployeeHome()),
                                /// done  send chossen cv to company Request
                              );
                            },
                            child: const Text("Done"),),),),
                      ],
                    );
                  },);
              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Apply",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
