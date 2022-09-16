class ProductModel {
  String productImagePath;
  String numberOfProduct;
  String productText;
  // ignore: prefer_typing_uninitialized_variables
  var route;

  ProductModel({
    required this.productImagePath,
    required this.numberOfProduct,
    required this.productText,
    this.route,
  });
}
