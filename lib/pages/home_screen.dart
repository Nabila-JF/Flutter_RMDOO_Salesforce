import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/home/profile_card.dart';
import 'package:rmdoo_salesforce/widgets/home/home_icon_area.dart';
import 'package:rmdoo_salesforce/widgets/home/quick_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  height: 55,
                ),
                ProfileCard(),
                const QuickInfo(),

                HomeIconArea(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
