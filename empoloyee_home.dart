import 'package:flutter/material.dart';
import 'EmployeeProfile.dart';
import 'emoticon_face.dart';
import 'jobs.dart';

class EmployeeHome extends StatefulWidget {
  const EmployeeHome({super.key});

  @override
  State<EmployeeHome> createState() => _EmployeeHomeState();
}

class _EmployeeHomeState extends State<EmployeeHome> {

  List<bool> isSelected = [false, false, false, false];
  void selectEmoji(int index){
    setState(() {
      for (int i=0; i<4; i++){
        isSelected[i]=false;
      }
      isSelected[index]=true;
    });
  }
  //////////////////////////////////////////////////
  int _selectedIndexemployeeHome = 0;

  void _onItemTappedemplyeeHome(int index) {
    if (_selectedIndexemployeeHome != index) {
      setState(() {
        _selectedIndexemployeeHome = index;
      });
      if (_selectedIndexemployeeHome == 1) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => EmployeeProfile()),(route)=>false,
        );
      }
    }
  }

  ////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal[200],
        iconSize: 30.0,
        currentIndex: _selectedIndexemployeeHome,
        onTap: _onItemTappedemplyeeHome,

        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Employee Home'),
         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Employee Profile',),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Omar !",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Flutter Developer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How was your day?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😕',
                            selected: isSelected[0],
                            onTap: () {selectEmoji(0);},
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😌',
                            selected: isSelected[1],
                            onTap: () {selectEmoji(1);},

                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😄',
                            selected: isSelected[2],
                            onTap: () {selectEmoji(2);},

                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😇',
                            selected: isSelected[3],
                            onTap: () {selectEmoji(3);},

                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Available Jobs",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Jobs(
                                icon: Icons.laptop,
                                job: "Flutter Developer",
                                CName: "Meta",
                                details:
                                "We are searching for ........ with 5 years of experaiance and .........")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}





/////////////////////////////////////////////////////////////////////////////
////////////////////.///////////////////////////////////////////////////////
//
// class Homepage extends StatefulWidget {
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   List<bool> isSelected = [false, false, false, false];
//   void selectEmoji(int index){
//     setState(() {
//       for (int i=0; i<4; i++){
//         isSelected[i]=false;
//       }
//       isSelected[index]=true;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[800],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 color: Colors.blue[600],
//               ),
//               label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Hi, Omar !",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 24),
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Text(
//                             "Flutter Developer",
//                             style: TextStyle(color: Colors.blue[200]),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.blue[600],
//                             borderRadius: BorderRadius.circular(12)),
//                         padding: EdgeInsets.all(12),
//                         child: Icon(
//                           Icons.notifications,
//                           color: Colors.white,
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(12)),
//                     padding: EdgeInsets.all(6),
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Expanded(
//                           child: TextField(
//                             decoration: InputDecoration(
//                                 hintText: "Search",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: InputBorder.none),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "How was your day?",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18),
//                       ),
//                       Icon(
//                         Icons.more_horiz,
//                         color: Colors.white,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(
//                         children: [
//                           EmoticonFace(
//                             emoticonface: '☹️',
//                             selected: isSelected[0],
//                             onTap: () {selectEmoji(0);},
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Text(
//                             "Bad",
//                             style: TextStyle(color: Colors.white),
//                           )
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           EmoticonFace(
//                             emoticonface: '😌',
//                             selected: isSelected[1],
//                             onTap: () {selectEmoji(1);},
//
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Text(
//                             "Fine",
//                             style: TextStyle(color: Colors.white),
//                           )
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           EmoticonFace(
//                             emoticonface: '😄',
//                             selected: isSelected[2],
//                             onTap: () {selectEmoji(2);},
//
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Text(
//                             "Well",
//                             style: TextStyle(color: Colors.white),
//                           )
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           EmoticonFace(
//                             emoticonface: '😇',
//                            selected: isSelected[3],
//                             onTap: () {selectEmoji(3);},
//
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Text(
//                             "Excellent",
//                             style: TextStyle(color: Colors.white),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(25),
//                 color: Colors.grey[200],
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Available Jobs",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 20),
//                           ),
//                           Icon(
//                             Icons.more_horiz,
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Expanded(
//                         child: ListView(
//                           shrinkWrap: true,
//                           children: [
//                             Jobs(
//                                 icon: Icons.laptop,
//                                 job: "Flutter Developer",
//                                 CName: "Meta",
//                                 details:
//                                     "We are searching for ........ with 5 years of experaiance and .........")
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
