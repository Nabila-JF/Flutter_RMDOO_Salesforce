import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/main_screen.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginButton createState() => _LoginButton();
}

class _LoginButton extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.065,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 114, 126, 252),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: const AutoSizeText(
          'LOGIN',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
