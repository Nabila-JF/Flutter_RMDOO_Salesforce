import 'package:flutter/cupertino.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/product/product_categories_area.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackgroundColor(),
        SafeArea(
          child: SingleChildScrollView(
            child: ProductCategoriesArea(),
          ),
        ),
      ],
    );
  }
}
