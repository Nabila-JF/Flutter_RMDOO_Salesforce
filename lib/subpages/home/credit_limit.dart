import "package:flutter/material.dart";
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/cards/general_card.dart';

import '../../widgets/appbar/default_subpages_appbar.dart';

class CreditLimit extends StatelessWidget {
  const CreditLimit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DefaultSubPagesAppBar(pageTitle: "Credit Limit"),
      body: Stack(
        children: [
          const BackgroundColor(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //coin card
                GeneralCard(
                  defaultWidth: 330,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Picture
                      Center(
                        child: Image.asset('assets/images/home/coin.png'),
                      ),

                      // Texts
                      Column(
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Credit Limit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF242F9B),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Rp. 0',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF242F9B),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                //GAP
                const SizedBox(
                  height: 20,
                ),

                //card card
                GeneralCard(
                  defaultWidth: 330,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Picture
                      Center(
                        child: Image.asset('assets/images/home/card-icon.png'),
                      ),

                      // Texts
                      Column(
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Credit Limit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF242F9B),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Rp. 0',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF242F9B),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
