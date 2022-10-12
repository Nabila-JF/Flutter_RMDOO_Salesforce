import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/product_model.dart';

import '../../layout/product_categories_item_layout.dart';

class ProductAreaList extends StatelessWidget {
  final List<ProductModel> productList;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ProductAreaList({required this.productList});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      scrollDirection: Axis.vertical,
      children: productList.map(
        (product) {
          return InkWell(
            onTap: () {
              //handling when the item is clicked
              if (product.route != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => product.route),
                );
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ProductCategoriesItem(
                imagePath: product.productImagePath,
                numberProduct: product.numberOfProduct,
                title: product.productText,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
