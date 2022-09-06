import 'package:flutter/cupertino.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/finance/finance_icon_area.dart';

class FinanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundColor(),
        SafeArea(child: SingleChildScrollView(child: FinanceIconArea())),
      ],
    );
  }
}
