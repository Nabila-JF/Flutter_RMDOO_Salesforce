import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/home/profile_card.dart';
import 'package:rmdoo_salesforce/widgets/home/home_icon_area.dart';
import 'package:rmdoo_salesforce/widgets/home/quick_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          // Background App
          const BackgroundColor(),
          // Widget List
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:15),
                    child: ProfileCard(),
                  ),
                  const QuickInfo(),
                  HomeIconArea(),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
