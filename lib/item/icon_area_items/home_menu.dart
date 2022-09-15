import 'package:rmdoo_salesforce/subpages/home/top_20_sales_amount.dart';
import 'package:rmdoo_salesforce/subpages/home/transaction_monthly.dart';

import '../../subpages/home/credit_limit.dart';
import '../icon_model.dart';

var homeMenuList = [
  // Credit Limit
  IconModel(
    iconImagePath: 'assets/images/home/limitcoin.png',
    iconText: 'Credit Limit',
    route: const CreditLimit(),
  ),
  // Transaction Monthly
  IconModel(
    iconImagePath: 'assets/images/home/moneymonth.png',
    iconText: 'Transaction Monthly',
    route: const TransactionMonthly(),
  ),
  // transaction Yearly
  IconModel(
    iconImagePath: 'assets/images/home/moneyyear.png',
    iconText: 'transaction Yearly',
  ),
  // Point and Deposit
  IconModel(
    iconImagePath: 'assets/images/home/wallet.png',
    iconText: 'Point and Deposit',
  ),
  // Barcode Stock Checking
  IconModel(
    iconImagePath: 'assets/images/home/barcode-scan.png',
    iconText: 'Barcode Stock Checking',
  ),
  // Top 20 Sales Amount
  IconModel(
      iconImagePath: 'assets/images/home/growth-chart.png',
      iconText: 'Top 20 Sales Amount',
      route: const Top20SalesAmount()),
  // Top 20 Sales Quantity
  IconModel(
    iconImagePath: 'assets/images/home/shopping-basket.png',
    iconText: 'Top 20 Sales Quantity',
  ),
  // Sales Shipment Inquiry
  IconModel(
    iconImagePath: 'assets/images/home/delivery-truck.png',
    iconText: 'Sales Shipment Inquiry',
  ),
  // Sales Order Inquiry
  IconModel(
    iconImagePath: 'assets/images/home/clipboard.png',
    iconText: 'Sales Order Inquiry',
  ), // Sales Order Inquiry
];
