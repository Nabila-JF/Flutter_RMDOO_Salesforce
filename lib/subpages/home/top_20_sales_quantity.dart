import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/subpages/home/data/top_20_sales_quantity_data_table.dart';
import 'package:rmdoo_salesforce/widgets/cards/general_card.dart';

import '../../layout/background.dart';
import '../../widgets/appbar/default_subpages_appbar.dart';

class Top20SalesQuantity extends StatelessWidget {
  const Top20SalesQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DefaultSubPagesAppBar(
        pageTitle: "Top 20 Sales",
        pageSubtittle: "Quantity",
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
                content: const Expanded(
                  child: Top20SalesQuantityDataTable(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
