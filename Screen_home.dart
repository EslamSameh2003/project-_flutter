
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget
{
  Widget build(BuildContext context)
  {
   // return Text("Home");
    //  Scaffold // بتخطط الشاشه
    return Scaffold(
      appBar:AppBar(
      leading: Icon
        (Icons.menu
      ),
      title:Text("Axion "
      ),
      actions: [
        IconButton(onPressed: (){print("notification");}, icon: Icon(Icons.notification_important)),
        IconButton(onPressed: (){print("notification");}, icon:Icon(Icons.search) )
      ],
      backgroundColor: Colors.teal,
    ),
      /*body: Container(
        color: Colors.amber,
        width: double.infinity,

        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize:MainAxisSize.min ,
          children:
          [
            /*
            Expanded(

                child:Container(
                  color: Colors.green,
                  child:
                  Text(
                    " magic",
                    style:TextStyle (
                        color: Colors.blue

                    ),

                  ),
                )
            ),
            Expanded(

                child:Container(
                  color: Colors.indigo, // بتلون الكونتانير كله

                  child: Text(
                    " Axion ",
                    style:TextStyle (
                        color: Colors.blue, // بتلون الكلمه
                      backgroundColor: Colors.amberAccent, //خلفية الكلمه


                    ),

                  ),

                )
            ),

            Container(
              height: 50.5,

              child: Text
                (
                  "HI Sir, Eslam",
                  style:TextStyle(
                    fontSize: 30.5,
                    color: Colors.tealAccent,
                    backgroundColor: Colors.black,


              )

              ),

            ),
              */



          ],
        ),
      ),

*/
      ///////////
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child:
        Stack(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  "fisrt",
                  style:TextStyle(
                    fontSize: 40.0,
                  ),

                ),
                Text(
                  "socund",
                  style:TextStyle(
                    fontSize: 40.0,
                  ),

                ),
                Text(
                  "third",
                  style:TextStyle(
                    fontSize: 40.0,

                  ),

                ),
                 Image(
                     image:
                     NetworkImage
                       (
                         'https://images2.thanhnien.vn/Uploaded/nthanhluan/2022_12_27/hacker2-3729.jpeg'
                       ),
                       height: 200.2,
                       width: 200.5,
                      // fit: BoxFit.cover,


                    )



              ],
            ),
          ],
        ),
      ),



      );


  }
}