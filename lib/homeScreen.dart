import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';
import 'screen2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

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
              Column(
                children: [
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  //   margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Icon(Icons.search),
                  //       Text('Search pet to adopt'),
                  //       Icon(Icons.settings)
                  //     ],
                  //   ),
                  // ),
                  Container(
                    //  margin: EdgeInsets.all(10),
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            width: 150,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('ATTENDANCE')),
                        Container(
                            width: 150,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('QUERY')),
                        Container(
                            width: 150,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('PROJECT UPDATE')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Container(
                  //   height: 120,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: categories.length,
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               padding: EdgeInsets.all(10),
                  //               margin: EdgeInsets.only(left: 20),
                  //               decoration: BoxDecoration(
                  //                   color: Colors.white,
                  //                   boxShadow: shadowList,
                  //                   borderRadius: BorderRadius.circular(10)),
                  //               child: Image.asset(
                  //                 categories[index]['iconPath'],
                  //                 height: 50,
                  //                 width: 50,
                  //                 color: Colors.grey[700],
                  //               ),
                  //             ),
                  //             Text(categories[index]['name'])
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Container(
                    height: 550,
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen2()));
                          },
                          child: Container(
                            width: 50,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.all(10),
                                  child: Align(
                                    child: Hero(
                                        tag: 1,
                                        child: Image.asset('IMAGES/R3.png')),
                                  ),
                                ),
                                Text('R3CURSION')
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Screen2()));
                          },
                          child: Container(
                            width: 50,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.all(10),
                                  child: Align(
                                      child: Image.asset('IMAGES/quest.png')
                                      //  Hero(
                                      //     tag: 1,
                                      //     child: Image.asset('IMAGES/R3.png')),
                                      ),
                                ),
                                Text('QUEST\'20 ')
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Screen2()));
                          },
                          child: Container(
                            width: 50,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.all(10),
                                  child: Align(
                                      child: Image.asset('IMAGES/doc.png',
                                          fit: BoxFit.fitWidth)
                                      //  Hero(
                                      //     tag: 1,
                                      //     child: Image.asset('IMAGES/R3.png')),
                                      ),
                                ),
                                Text('DAWN OF CRISIS')
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Screen2()));
                          },
                          child: Container(
                            width: 50,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.all(10),
                                  child: Align(
                                      child: Image.asset('IMAGES/cod.png')
                                      // Hero(
                                      //     tag: 1,
                                      //     child: Image.asset('IMAGES/R3.png')),
                                      ),
                                ),
                                Text('COD')
                              ],
                            ),
                          ),
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => Screen2()));
                        //   },
                        //   child: Container(
                        //     //color: Colors.red,
                        //     height: 240,
                        //     margin: EdgeInsets.symmetric(horizontal: 20),
                        //     child: Row(
                        //       children: [
                        //         Expanded(
                        //           child: Stack(
                        //             children: [
                        //               Container(
                        //                 decoration: BoxDecoration(
                        //                   // color: Colors.blueGrey[300],
                        //                   borderRadius:
                        //                       BorderRadius.circular(20),
                        //                   // boxShadow: shadowList,
                        //                 ),
                        //                 margin: EdgeInsets.only(top: 50),
                        //               ),
                        //               Align(
                        //                 child: Hero(
                        //                     tag: 1,
                        //                     child:
                        //                         Image.asset('IMAGES/R3.png')),
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //         Expanded(
                        //             child: Container(
                        //           margin: EdgeInsets.only(top: 60, bottom: 20),
                        //           decoration: BoxDecoration(
                        //               color: Colors.white,
                        //               boxShadow: shadowList,
                        //               borderRadius: BorderRadius.only(
                        //                   topRight: Radius.circular(20),
                        //                   bottomRight: Radius.circular(20))),
                        //         )),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 0,
                  )
                ],
              ),
            ],
          ),
          //   ),
        ),
      ),
    );
  }
}
