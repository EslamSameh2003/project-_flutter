import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_flutter/company_profile.dart';
import 'package:ui_flutter/req.dart';

import 'emoticon_face.dart';


class CompHome extends StatefulWidget {
  const CompHome({super.key});

  @override
  State<CompHome> createState() => _CompHomeState();
}
class _CompHomeState extends State<CompHome> {

  int _selectedIndexCompanyHome = 0;

  void _onItemTappedCompanyHome(int index) {
    if (_selectedIndexCompanyHome != index) {
      setState(() {
        _selectedIndexCompanyHome = index;
      });
      if (_selectedIndexCompanyHome == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CompanyProfile()),);
      }
    }
  }



    List<bool> isSelected = [false, false, false, false];
  void selectEmoji(int index){
    setState(() {
      for (int i=0; i<4; i++){
        isSelected[i]=false;
      }
      isSelected[index]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal[200],
        iconSize: 30.0,
        currentIndex:_selectedIndexCompanyHome,
        onTap:  _onItemTappedCompanyHome,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Company Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Company Profile',
          ),
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Meta Company",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Programming",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(6),
                    child: const Row(
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
                  const SizedBox(
                    height: 25,
                  ),
                   const Row(
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
                  const SizedBox(
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
                            onTap: () {
                              selectEmoji(0);
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
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
                            onTap: () {
                              selectEmoji(1);
                            },
                          ),
                          const SizedBox(
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
                            onTap: () {
                              selectEmoji(2);
                            },
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
                            onTap: () {
                              selectEmoji(3);
                            },
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
                            "Requests",
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
                            Req(
                                icon: Icons.laptop,
                                job: "Flutter",
                                brief:
                                    "My name is omar and .................................. ...... ...",
                                name: "Omar Hamada")
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
