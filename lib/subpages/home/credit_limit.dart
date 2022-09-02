import "package:flutter/material.dart";
import 'package:rmdoo_salesforce/layout/background.dart';

import '../../widgets/appbar/default_subpages_appbar.dart';


class CreditLimit extends StatelessWidget {
  const CreditLimit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:DefaultSubPagesAppBar(pageTitle : "Credit Limit"),
      body: Stack(
        children: [
          const BackgroundColor(),
        ],
      ),
    );
  }
}
