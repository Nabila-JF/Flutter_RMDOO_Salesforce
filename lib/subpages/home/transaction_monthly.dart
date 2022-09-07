import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/subpages/home/data/transaction_monthly_data_table.dart';
import 'package:rmdoo_salesforce/widgets/cards/general_card.dart';

import '../../layout/background.dart';
import '../../widgets/appbar/default_subpages_appbar.dart';

class TransactionMonthly extends StatelessWidget {
  const TransactionMonthly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DefaultSubPagesAppBar(pageTitle: "Credit Limit"),
      body: Stack(
        children: [
          const BackgroundColor(),
          SingleChildScrollView(
            child: SafeArea(
              child: GeneralCard(
                height: MediaQuery.of(context).size.height,
                defaultWidth: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                content: Expanded(
                  child: TransactionMonthlyDataTable(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
