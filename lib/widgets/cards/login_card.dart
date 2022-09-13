import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/login/login_card_content.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        color: Colors.white.withOpacity(0.75),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF242F9B).withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: const LoginCardContent(),
    );
  }
}
