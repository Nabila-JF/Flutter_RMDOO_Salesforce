import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/home/home_menu.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widget/home/card.dart';

import 'package:rmdoo_salesforce/widget/home/navbar.dart';
import 'package:rmdoo_salesforce/widget/home/iconArea.dart';

class HomeScreen extends StatelessWidget {
  int _indexPage = 0;
  @override
  Widget build(BuildContext context) {
    var menu;
    return Scaffold(
      body: Stack(
        children: [
          // Background App
          const BackgroundColor(),

          // Widget List
          SingleChildScrollView(
            child: Column(
              children: [
                // Space from top
                Container(
                  height: 55,
                ),

                ProfileCard(),
                // Profile Card
                // Stack(
                //   children: [
                //     // Card Area
                //     ProfileCard(),
                //     // Notification Icon
                //     Padding(
                //       padding: const EdgeInsets.fromLTRB(290, 0, 0, 0),
                //       child: Image.asset(
                //         "assets/images/home/notif-icon.png",
                //         scale: 2.5,
                //       ),
                //     ),
                //     // Profile Pic
                //     Padding(
                //         padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                //         child: Center(
                //           child: Container(
                //             height: 90,
                //             width: 90,
                //             decoration: BoxDecoration(
                //               border: Border.all(width: 5, color: Colors.white),
                //               borderRadius:
                //                   BorderRadius.circular(100), //<-- SEE HERE
                //             ),
                //             child: ClipOval(
                //                 child: Image.asset(
                //                     'assets/images/home/profile-pic.jpg')),
                //           ),
                //         )),
                //     // Profile Name + ID
                //     Padding(
                //       padding: const EdgeInsets.fromLTRB(0, 125, 0, 0),
                //       child: Column(
                //         children: [
                //           Row(
                //             children: const [
                //               Expanded(
                //                 child: Text(
                //                   'Nabila',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(
                //                     color: Color(0xFF242F9B),
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 20,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //           Row(
                //             children: const [
                //               Expanded(
                //                 child: Text('3122331084798',
                //                     textAlign: TextAlign.center,
                //                     style: TextStyle(
                //                       color: Color(0xFF242F9B),
                //                       fontSize: 14,
                //                     )),
                //               ),
                //             ],
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                // Little Information Under Profile Card
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Last Transaction',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Average Spending',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Point',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              '08/08/2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '220.456',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '1057',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 15),
                // Icon Menu

                iconArea(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: navbar(
        onChange: (val) {},
        defaultSelectedIndex: 0,
      ),
      //backgroundColor: Colors.white,
    );
  }
}
