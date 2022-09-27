// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'bottomNavbarScreen/home_screen.dart';
import 'bottomNavbarScreen/message_screen.dart';
import 'bottomNavbarScreen/profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> screen = [HomeScreen(), MessageScreen(), ProfileScreen()];
  int tabScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //our app appbar section
      appBar: AppBar(
        title: Text("Main Page"),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 150,
              color: Color.fromARGB(255, 39, 112, 248),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://tinyurl.com/2p8ptz9r"),
                    radius: 30.0,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Sukanto Mukherjee",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: Text("Profile "),
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Color.fromARGB(255, 121, 120, 120),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.message),
              title: Text("Message "),
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Color.fromARGB(255, 97, 96, 96),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            Divider(
              height: 3,
              thickness: 2,
              color: Color.fromARGB(255, 121, 120, 120),
            ),
            ExpansionTile(
              initiallyExpanded: false,
              childrenPadding: EdgeInsets.all(15),
              title: Text("More"),
              subtitle: Text("Cleck now"),
              // leading: Icon(Icons.more),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                    "widget_class A new Flutter project. ## Getting Started This project is a starting point for a Flutter application. ")
              ],
            ),
          ],
        ),
      ),
      //our app body section
      body: screen[tabScreen],
      //our app bottomNavbar section
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 11, 28, 85),
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 20,
        unselectedFontSize: 16,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: tabScreen,
        onTap: (index) {
          setState(() {
            tabScreen = index;
          });
        },
      ),
    );
  }
}
