import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/EmployeeProfile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex2 = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex2 = index;
    });
    if (_selectedIndex2 == index) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EmployeeProfile()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Axion"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "fisrt",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  "socund",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  "third",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                Image(
                  image: NetworkImage(
                      'https://images2.thanhnien.vn/Uploaded/nthanhluan/2022_12_27/hacker2-3729.jpeg'),
                  height: 200.2,
                  width: 200.5,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal[200],
        iconSize: 30.0,
        currentIndex: _selectedIndex2,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(label: "HomeScreen", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "MyProfile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
