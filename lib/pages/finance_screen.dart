import 'package:flutter/cupertino.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/finance/finance_icon_area.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackgroundColor(),
        SafeArea(child: SingleChildScrollView(child: FinanceIconArea())),
      ],
    );
  }
}
