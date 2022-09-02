import "package:flutter/material.dart";
class CreditLimit extends StatelessWidget {
  const CreditLimit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Limit'),
      ),
      body: Center(
        child: Text('Credit Limit'),
      ),
    );
  }
}