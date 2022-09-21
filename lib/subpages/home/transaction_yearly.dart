import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/subpages/home/data/transaction_yearly_data_table.dart';
import 'package:rmdoo_salesforce/widgets/cards/general_card.dart';

import '../../layout/background.dart';
import '../../widgets/appbar/default_subpages_appbar.dart';

class TransactionYearly extends StatelessWidget {
  const TransactionYearly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DefaultSubPagesAppBar(
        pageTitle: "Transaction",
        pageSubtittle: "Yearly",
      ),
      body: Stack(
        children: [
          const BackgroundColor(),
          SingleChildScrollView(
            child: SafeArea(
              child: GeneralCard(
                height: MediaQuery.of(context).size.height,
                defaultWidth: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                content: const TransactionYearlyDataTable(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
