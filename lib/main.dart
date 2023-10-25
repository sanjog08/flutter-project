import 'package:flutter/material.dart';
import 'package:scroll_template/watchlist/watchlist1.dart';
import 'package:scroll_template/watchlist/watchlist2.dart';
import 'package:scroll_template/watchlist/watchlist3.dart';
import 'package:scroll_template/watchlist/watchlist4.dart';
import 'package:scroll_template/watchlist/watchlist5.dart';
import 'package:scroll_template/watchlist/watchlist6.dart';
import 'package:scroll_template/watchlist/watchlist7.dart';

void main(){
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget{
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp Scroll Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEEEEEE),
      ),
      home: ScrollScreen(),
    );
  }
}

class ScrollScreen extends StatefulWidget{
  const ScrollScreen({super.key});

  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {

  // Color textColor = Colors.red;
  // void onTap() {
  //   setState(() {
  //     textColor = Colors.blue;// Change this to the desired color
  //   });
  //   print('one clicked!');
  //   pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.linear);
  // }
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xFFEEEEEE),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),

                          child: Text('Watchlist', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF424242)),),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xFFEEEEEE),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                            onTap: () {
                              print('one clicked!');
                              pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                        InkWell(
                            onTap: () {
                              print('two clicked!');
                              pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                        InkWell(
                            onTap: () {
                              print('three clicked!');
                              pageController.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                        InkWell(
                            onTap: () {
                              print('four clicked!');
                              pageController.animateToPage(3, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 4', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                        InkWell(
                            onTap: () {
                              print('five clicked!');
                              pageController.animateToPage(4, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                        InkWell(
                            onTap: () {
                              print('six clicked!');
                              pageController.animateToPage(5, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 6', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                        InkWell(
                            onTap: () {
                              print('seven clicked!');
                              pageController.animateToPage(6, duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(child: Text('Watchlist 7', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),)),
                            )),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Color(0xFFFAFAFA),
              child: PageView(
                controller: pageController,
                children: [
                  watchlist_1(),
                  watchlist_2(),
                  watchlist_3(),
                  watchlist_4(),
                  watchlist_5(),
                  watchlist_6(),
                  watchlist_7()
                ],
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFFEEEEEE),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('watchlist clicked!');
                        },
                        icon: const Icon(
                          Icons.bookmark_border,
                          color: Colors.blue,
                        ),
                      ),
                      Text('Watchlist', style: TextStyle(fontSize: 15, color: Colors.blue),)
                    ],
                  ))),
                  Expanded(flex: 1, child: Container(child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('orders clicked!');
                        },
                        icon: const Icon(
                          Icons.folder_open,
                          color: Color(0xFF616161),
                        ),
                      ),
                      Text('Orders', style: TextStyle(fontSize: 15),)
                    ],
                  ))),
                  Expanded(flex: 1, child: Container(child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('portfolio clicked!');
                        },
                        icon: const Icon(
                          Icons.business_center_outlined,
                          color: Color(0xFF616161),
                        ),
                      ),
                      Text('Portfolio', style: TextStyle(fontSize: 15),)

                    ],
                  ))),
                  Expanded(flex: 1, child: Container(child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('tools clicked!');
                        },
                        icon: const Icon(
                          Icons.build,
                          color: Color(0xFF616161),
                        ),
                      ),
                      Text('Tools', style: TextStyle(fontSize: 15),)

                    ],
                  ))),
                  Expanded(flex: 1, child: Container(child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('profile clicked!');
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Color(0xFF616161),
                        ),
                      ),
                      Text('Profile', style: TextStyle(fontSize: 15),)

                    ],
                  ))),

                ],
              )
            ),
          ),

        ],
      )
    );
  }
}