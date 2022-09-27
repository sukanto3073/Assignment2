// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _iteam = ["Sukanto", "Joy", "Rony", "Shakib"];

  late var selected = _iteam.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 70,
                color: Colors.green,
                child: TabBar(
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Color.fromARGB(255, 216, 216, 216),
                  child: TabBarView(
                    children: [
                      Container(
                        child: Center(
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: Text(
                                  "Hello",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              DropdownButton(
                                  value: selected,
                                  elevation: 8,
                                  hint: Text("Select"),
                                  items: _iteam.map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text("$value"),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      selected = value;
                                      print(selected);
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("Tap two"),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("Tap Three"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
