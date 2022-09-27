import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/product/product_categories_menu.dart';
import 'package:rmdoo_salesforce/widgets/product/image_slider.dart';
import 'package:rmdoo_salesforce/widgets/product/product_categories_list.dart';

class ProductCategoriesArea extends StatelessWidget {
  const ProductCategoriesArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 4),
      height: MediaQuery.of(context).size.height * 0.88,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF242F9B).withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: AutoSizeText(
                  "Product Categories",
                  style: TextStyle(
                      color: Color(0xFF242F9B),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Image.asset("assets/images/product/discount-icon.png", scale: 2)
            ],
          ),
          ImageSlider(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
                child: ProductAreaList(productList: productCategoriesList),
            ),
          )
        ],
      ),
    );
  }
}
