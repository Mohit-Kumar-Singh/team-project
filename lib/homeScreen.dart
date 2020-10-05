import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';
import 'screen2.dart';
import 'mainPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  //  var _selectedTab = _SelectedTab.home;
  // Widget showpage = MainPage();

  // void _handleIndexChanged(int i) {
  //   setState(() {
  //     _selectedTab = _SelectedTab.values[i];
  //   });
  // }

  // Widget build(BuildContext context) {
  //   if (_selectedTab == _SelectedTab.values[0]) {
  //     showpage = MainPage();
  //   }
  //   if (_selectedTab == _SelectedTab.values[1]) {
  //     showpage = Search();
  //   }
  //   if (_selectedTab == _SelectedTab.values[2]) {
  //     showpage = ProfilePage();
  //   }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          xOffset = 0;
          yOffset = 0;
          scaleFactor = 1;
          isDrawerOpen = false;
        });
      },
      child: SafeArea(
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isDrawerOpen ? -0.5 : 0),
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            }),
                    Text(
                      'Conatus',
                      style: TextStyle(fontSize: 25),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MainPage(),

            ],
          ),
          //   ),
        ),
      ),
    );
  }
}
