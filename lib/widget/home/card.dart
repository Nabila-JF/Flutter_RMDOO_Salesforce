import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          color: Colors.white.withOpacity(0.75),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF242F9B).withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            // Notification Icon
            Container(
              padding: const EdgeInsets.all(4),
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/home/notif-icon.png",
                scale: 2.5,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Pic
                Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(100), //<-- SEE HERE
                    ),
                    child: ClipOval(
                        child:
                            Image.asset('assets/images/home/profile-pic.jpg')),
                  ),
                ),
                // Profile Name + ID
                Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Nabila',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF242F9B),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            '3122331084798',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF242F9B),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
