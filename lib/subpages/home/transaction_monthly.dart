import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/cards/general_card.dart';

import '../../layout/background.dart';
import '../../widgets/appbar/default_subpages_appbar.dart';

class TransactionMonthly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DefaultSubPagesAppBar(pageTitle: "Credit Limit"),
      body: Stack(
        children: [
          const BackgroundColor(),
          SafeArea(
            child: Center(
              child: GeneralCard(
                padding: EdgeInsets.all(4),
                content: Text("PPP"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
