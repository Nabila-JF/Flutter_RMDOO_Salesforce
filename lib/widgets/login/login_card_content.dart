import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/login/dropdown.dart';
import 'package:rmdoo_salesforce/widgets/login/input_textfield.dart';
import 'package:rmdoo_salesforce/widgets/login/login_button.dart';

class LoginCardContent extends StatelessWidget {
  const LoginCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AutoSizeText(
              "Hello.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xFF242F9B),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: AutoSizeText(
                "Welcome to login page!",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF242F9B),
                ),
              ),
            ),
            const InputTextField(
              hintText: "Username",
            ),
            const InputTextField(
              hintText: "Password",
            ),
            const DropOffice(),
            const LoginButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AutoSizeText(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF242F9B),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.5),
                  child: AutoSizeText(
                    'Register here',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        color: Color(0xFF242F9B),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
