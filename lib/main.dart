// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Tabs/burger_tab.dart';
import 'Tabs/donut_tab.dart';
import 'Tabs/pancake_tab.dart';
import 'Tabs/pizza_tab.dart';
import 'Tabs/smoothie_tab.dart';
import 'utils/myTabView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //   //* Donut Tab
    MyTab(
      iconPath: "assets/icons/donut.png",
    ),

    //   //* Burger Tab
    MyTab(
      iconPath: "assets/icons/burger.png",
    ),

    //   //* Smoothie Tab
    MyTab(
      iconPath: "assets/icons/smoothie.png",
    ),

    //   //* Pancake Tab
    MyTab(
      iconPath: "assets/icons/pancakes.png",
    ),

    //   //* Pizza Tab
    MyTab(
      iconPath: "assets/icons/pizza.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          backgroundColor: Colors.deepPurple.shade100,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: const Icon(Icons.menu),
            ),
            actions: const [
              //* Notification Icon
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.notifications,
                  size: 29,
                ),
              ),

              //* Person Icon
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.person,
                  size: 29,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              //* SubTitle line
              Padding(
                padding:
                    const EdgeInsets.only(left: 35.0, right: 35.0, top: 35.0),
                child: Row(
                  children: [
                    Text(
                      "YOU WANNA ",
                      style: GoogleFonts.acme(fontSize: 25),
                    ),
                    Text(
                      "EAT...",
                      style: GoogleFonts.acme(fontSize: 25, letterSpacing: 2),
                    ),
                  ],
                ),
              ),

              //* Tab Bar
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TabBar(
                  tabs: myTabs,
                ),
              ),

              //* Tab Bar Views
              Expanded(
                child: TabBarView(
                  children: [
                    //* Donut Tab
                    DonutTab(),
                    //   //* Burger Tab
                    BurgerTab(),
                    //   //* Smoothie Tab
                    SmoothieTab(),
                    //   //* Pancake Tab
                    PancakeTab(),
                    //   //* Pizza Tab
                    PizzaTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
